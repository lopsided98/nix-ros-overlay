
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, uncrustify }:
buildRosPackage {
  pname = "ros-galactic-uncrustify-vendor";
  version = "1.5.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/galactic/uncrustify_vendor/1.5.3-2.tar.gz";
    name = "1.5.3-2.tar.gz";
    sha256 = "d15832e5ed9a3873d5f335a11723b403d093c643b429c8f98e8522cafbbed833";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ uncrustify ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Wrapper around uncrustify, providing nothing but a dependency on uncrustify, on some systems.
    On others, it provides an ExternalProject build of uncrustify.'';
    license = with lib.licenses; [ asl20 "GPL-2.0-only" ];
  };
}
