
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, launch, nav-2d-msgs, launch-testing, tf2, ament-lint-common, ament-cmake, ament-lint-auto, tf2-geometry-msgs, nav2-common, ament-cmake-pytest, nav2-msgs, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-nav-2d-utils";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav_2d_utils/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "f1e3e83cf8dd7428606c5b231ba83df50dc6afeac3c2272684222b3d42f2482e";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs nav-msgs tf2 tf2-geometry-msgs nav2-common nav-2d-msgs nav2-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav-2d-msgs tf2-geometry-msgs tf2 nav2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A handful of useful utility functions for nav_2d packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
