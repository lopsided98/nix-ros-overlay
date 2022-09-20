
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chomp-motion-planner, moveit-common, moveit-core, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-moveit-planners-chomp";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_planners_chomp/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "4612da44d93816c551a95e295abbb1fe7115ef18acdeffbeecee8382ebae3f23";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
