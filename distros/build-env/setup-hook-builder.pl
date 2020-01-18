use strict;
use warnings;
use JSON::PP;

my $out = $ENV{"out"};

# Read packages list.
my $pkgs;

if (exists $ENV{"pkgsPath"}) {
    open FILE, $ENV{"pkgsPath"};
    $pkgs = <FILE>;
    close FILE;
} else {
    $pkgs = $ENV{"pkgs"}
}

# Create a setup hook that sources the setup hooks of all packages in the
# environment.
mkdir "$out/nix-support" unless -d "$out/nix-support";
open(my $setupHook, '>', "$out/nix-support/setup-hook");

for my $pkg (@{decode_json $pkgs}) {
    for my $path (@{$pkg->{paths}}) {
        my $pathSetupHook = "$path/nix-support/setup-hook";
        print $setupHook ". $pathSetupHook\n" if -e $pathSetupHook;
    }
}
close $setupHook;
