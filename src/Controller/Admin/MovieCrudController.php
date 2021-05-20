<?php

namespace App\Controller\Admin;

use App\Entity\Movie;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class MovieCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Movie::class;
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('name'),
            TextField::new('originalName'),
            IntegerField::new('releaseDate'),
            ImageField::new('image')->setUploadDir('/public/assets/img')->setBasePath('assets/img'),
            TextEditorField::new('synopsis'),
            BooleanField::new('seen'),
            BooleanField::new('watchList'),
            AssociationField::new('actors'),
            AssociationField::new('genres'),
            AssociationField::new('studios')
        ];
    }
}
