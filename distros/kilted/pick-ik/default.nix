
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fmt, generate-parameter-library, moveit-core, moveit-resources-panda-moveit-config, pluginlib, range-v3, rclcpp, rsl, tf2-geometry-msgs, tf2-kdl, tl-expected }:
buildRosPackage {
  pname = "ros-kilted-pick-ik";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pick_ik-release/archive/release/kilted/pick_ik/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "cbaf8820c077c19cf3159ff850f44ae3ec8584c2fd69e522b403ce98b3cc066b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ fmt generate-parameter-library moveit-core pluginlib range-v3 rclcpp rsl tf2-geometry-msgs tf2-kdl tl-expected ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Inverse Kinematics solver for MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
