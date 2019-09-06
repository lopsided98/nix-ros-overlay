
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, tf2-geometry-msgs, launch-testing, nav2-msgs, ament-cmake-gtest, launch, nav2-common, tf2, nav-msgs, ament-lint-auto, nav-2d-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-nav-2d-utils";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav_2d_utils/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "e34739f2b7fec6462caba257e56a91823a50ae3f7fb7fabb1edb30c24b3b7e7c";
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
