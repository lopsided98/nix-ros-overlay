use strict;
use warnings;
use JSON::PP;

my $out = $ENV{"out"};

# Read packages list.
my $pkgs;

open FILE, $ENV{"NIX_ATTRS_JSON_FILE"};
$pkgs = <FILE>;
close FILE;

# Create a setup hook that sources the setup hooks of all packages in the
# environment.
mkdir "$out/nix-support" unless -d "$out/nix-support";
open(my $setupHook, '>', "$out/nix-support/setup-hook");

for my $pkg (@{decode_json($pkgs)->{chosenOutputs}}) {
    for my $path (@{$pkg->{paths}}) {
        my $pathSetupHook = "$path/nix-support/setup-hook";
        print $setupHook ". $pathSetupHook\n" if -e $pathSetupHook;
    }
}
close $setupHook;
