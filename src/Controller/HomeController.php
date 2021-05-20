<?php

namespace App\Controller;

use App\Entity\Actor;
use App\Entity\Genre;
use App\Entity\Studio;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\MovieRepository;
use App\Repository\ActorRepository;
use App\Repository\GenreRepository;
use App\Repository\StudioRepository;

class HomeController extends AbstractController
{
    private $repoMovie;
    // private $repoActor;
    // private $repoGenre;
    // private $repoStudio;

    public function __construct(
        MovieRepository $repoMovie
        // ActorRepository $repoActor,
        // GenreRepository $repoGenre,
        // StudioRepository $repoStudio
        )
    {
        $this->repoMovie = $repoMovie;
        // $this->repoActor = $repoActor;
        // $this->repoGenre = $repoGenre;
        // $this->repoStudio = $repoStudio;
    }

    /**
     * @Route("/", name="home")
     */
    public function index(): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }
    /**
     * @Route("/app", name="app")
     */
    public function app(): Response
    {
        $movies = $this->repoMovie->findAll();

        return $this->render('app/index.html.twig', [
            'movies'    => $movies
        ]);
    }
     /**
     * @Route("/app/genre/{id}", name="genre")
     */
    public function genre(Genre $genre): Response
    {
        return $this->render('app/genre.html.twig');
    }
     /**
     * @Route("/app/actor/{id}", name="actor")
     */
    public function actor(Actor $actor): Response
    {
        $movies = $actor->getMovies();
        return $this->render('app/actor.html.twig', [
            'movies'    => $movies,
            'actor'     => $actor
        ]);
    }
     /**
     * @Route("/app/studio/{id}", name="studio")
     */
    public function studio(Studio $studio): Response
    {
        return $this->render('app/studio.html.twig');
    }
     /**
     * @Route("/about", name="about")
     */
    public function about(): Response
    {
        return $this->render('about.html.twig');
    }
}
