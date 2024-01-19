
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-2d-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-util, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-iron-nav-2d-utils";
  version = "1.2.5-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav_2d_utils/1.2.5-2.tar.gz";
    name = "1.2.5-2.tar.gz";
    sha256 = "ad98ba3f7ee80c95ee24641178be9edd60fc48335051ee1e8d519d7c025e7c98";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs nav-msgs nav2-msgs nav2-util std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A handful of useful utility functions for nav_2d packages.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
