use lib '../lib';
use Bailador;
use Bailador::Plugin::Static;

#get '/' => sub { app.response.headers<Content-Type> = 'whatever'; 'meow' };

# start the app from this dir
# /assets/camelia.pn6 and /assets/style.css will be accessible

baile;