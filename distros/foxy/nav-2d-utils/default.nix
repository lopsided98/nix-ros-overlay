
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-2d-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-util, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-foxy-nav-2d-utils";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/nav_2d_utils/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "37175d12ce791791ef17d83b51558147f91d6769e88a64bcb61704780d43dd34";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs nav-msgs nav2-msgs nav2-util tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A handful of useful utility functions for nav_2d packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
