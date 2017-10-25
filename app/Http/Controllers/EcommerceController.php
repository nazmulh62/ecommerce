<?php

namespace App\Http\Controllers;

use App\Product;
use App\Slider;
use App\Brand;
use App\Category;
use App\Team;
use App\About;
use View;
use DB;
use Illuminate\Http\Request;

class EcommerceController extends Controller
{
    public function home(){
        $allPublushedProucts = Product::where('publication_status', '1')->get();
        $allPublushedSliders  = Slider::where('publication_status', '1')->get();

        return view('frontEnd.home',[

            'allPublushedProucts'=>$allPublushedProucts,
            'allPublushedSliders'=>$allPublushedSliders
        ]);
    }
    public function About(){
        $allPublushedTeams = Team::where('publication_status', '1')->get();
        $allPublushedAbouts= About::where('publication_status', '1')->get();
        return view('frontEnd.about',[
            'allPublushedTeams'=>$allPublushedTeams,
            'allPublushedAbouts'=>$allPublushedAbouts
        ]);
    }
    public function Deals(){
        $allPublushedProducts = Product::where('publication_status', '1')->get();

        return view('frontEnd.product',[

            'allPublushedProducts'=>$allPublushedProducts

        ]);
    }
    public function Service(){
        return view('frontEnd.service');
    }
    public function Event(){
        return view('frontEnd.event');
    }
    public function Checkout(){
        return view('frontEnd.checkout');
    }

    public function Login(){
        return view('frontEnd.login');
    }
    public function SignUp(){
        return view('frontEnd.signup');
    }
    public function Household(){
        return view('frontEnd.household');
    }
    public function Vegetables(){
        return view('frontEnd.vegetables');
    }
    public function Kitchen(){
        return view('frontEnd.kitchen');
    }
    public function Shortcodes(){
        return view('frontEnd.shortcodes');
    }
    public function Softdrink(){
        return view('frontEnd.drinks');
    }
    public function Frozen(){
        return view('frontEnd.frozen');
    }
    public function Bread(){
        return view('frontEnd.bread');
    }
    public function Single(){
        return view('frontEnd.single');
    }
    public function Mail(){
        return view('frontEnd.mail');
    }
        public function Pet(){
        return view('frontEnd.pet');
    }

    public function Privacy(){
        return view('frontEnd.privacy');
    }
    public function Payment(){
        return view('frontEnd.payment');
    }
//    public function Category($id){
//        $categoryProducts= Product::where('category_id',$id)->get();
//        return view('frontEnd.category',[
//            'categoryProducts'=>$categoryProducts
//        ]);
//    }
    public function Brand($id){
        $brandProducts= Product::where('brand_id',$id)->get();
        return view('frontEnd.brand',[
            'brandProducts'=>$brandProducts
        ]);
    }

}
