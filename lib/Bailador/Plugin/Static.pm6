unit class Bailador::Plugin::Static;

use Bailador;
use MIME::Types;
constant $MIME = MIME::Types.new: ~%?RESOURCES<mime.types>;
say $MIME.type: 'rasdasadasdsadas';

get rx{ ^ '/assets/' (.+) } =>-> $asset {
    my $file = $*SPEC.catdir: 'assets', $*SPEC.splitdir($asset)
        .grep({ $_ ~~ $*SPEC.curupdir });

    return status 404
        unless $file.IO.f and $file ~~ / \. (<-[.]>+) $ /;
    content_type $MIME.type: $0;
};
