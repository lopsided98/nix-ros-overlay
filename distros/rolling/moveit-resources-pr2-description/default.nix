
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-pr2-description";
  version = "3.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_pr2_description/3.1.1-2.tar.gz";
    name = "3.1.1-2.tar.gz";
    sha256 = "b6aacb77f2fb434616f9ab6968200c93bc60916c0ecd826dbf30cf605f117e71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PR2 Resources used for MoveIt! testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
