unit class Bailador::Plugin::Static;

use Bailador;
use MIME::Types;
constant $MIME = MIME::Types.new: ~%?RESOURCES<mime.types>;

get rx{ ^ '/assets/' (.+) } => sub ($asset) {
    my $file = $*SPEC.catdir: 'assets', $*SPEC.splitdir($asset)
        .grep({ $_ ~~ $*SPEC.curupdir });

    return status 404 unless $file.IO.f;
    content_type $MIME.type($file.IO.extension) // 'application/octet-stream';
    return $file.IO.slurp: :bin;
};
