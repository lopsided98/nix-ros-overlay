
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, uncrustify }:
buildRosPackage {
  pname = "ros-iron-uncrustify-vendor";
  version = "2.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/iron/uncrustify_vendor/2.1.2-3.tar.gz";
    name = "2.1.2-3.tar.gz";
    sha256 = "8649f4353db1ada53e37eff0950740301e5290971204714fae1b3afd79c80513";
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
