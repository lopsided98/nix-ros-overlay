
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-moveit-resources-pr2-description";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/kilted/moveit_resources_pr2_description/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "89405b77b55b1bf5203094e91ead0357ac128d89498a8af480fa233c19d90927";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PR2 Resources used for MoveIt! testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
