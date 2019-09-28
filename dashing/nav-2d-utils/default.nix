
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, tf2-geometry-msgs, launch-testing, nav2-msgs, ament-cmake-gtest, nav2-util, launch, nav2-common, tf2, nav-msgs, ament-lint-auto, nav-2d-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-nav-2d-utils";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav_2d_utils/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "8b15ec68ab4148953a50ff1ba2086202d8e0c3c52f8f05653d6934808e3e58eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2-geometry-msgs nav2-msgs nav2-util nav2-common tf2 nav-msgs nav-2d-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ tf2-geometry-msgs nav2-msgs nav2-util tf2 nav-msgs nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A handful of useful utility functions for nav_2d packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
