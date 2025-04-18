
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-pr2-description";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/humble/moveit_resources_pr2_description/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "fa9e1476cf78f80fcd55340897985977ff42fc28db55494ec99b237108d892c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PR2 Resources used for MoveIt! testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
