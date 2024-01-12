
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, uncrustify }:
buildRosPackage {
  pname = "ros-humble-uncrustify-vendor";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/humble/uncrustify_vendor/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "4703e6e84fe877004ad85d8439c13eb4032bd0b3f43d906f64dfc86537591241";
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
