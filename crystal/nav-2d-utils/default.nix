
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, tf2-geometry-msgs, launch-testing, nav2-msgs, ament-cmake-gtest, launch, nav2-common, tf2, nav-msgs, ament-lint-auto, nav-2d-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-nav-2d-utils";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav_2d_utils/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "f1e3e83cf8dd7428606c5b231ba83df50dc6afeac3c2272684222b3d42f2482e";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2-geometry-msgs nav2-msgs nav2-common tf2 nav-msgs nav-2d-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ tf2-geometry-msgs nav2-msgs tf2 nav-msgs nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A handful of useful utility functions for nav_2d packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
