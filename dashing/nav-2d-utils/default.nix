
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, geometry-msgs, nav-msgs, launch, launch-testing, tf2, ament-lint-common, ament-cmake, ament-lint-auto, tf2-geometry-msgs, nav2-common, nav-2d-msgs, nav2-util, nav2-msgs, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-nav-2d-utils";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav_2d_utils/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "6fae11e81f0c70b8eef07560ef54e45a14acceeccac1fd7bc143bd9702737956";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs nav-msgs tf2 tf2-geometry-msgs nav2-common nav-2d-msgs nav2-util nav2-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs tf2 tf2-geometry-msgs nav-2d-msgs nav2-util nav2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A handful of useful utility functions for nav_2d packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
