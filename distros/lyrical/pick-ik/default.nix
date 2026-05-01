
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fmt, generate-parameter-library, moveit-core, moveit-resources-panda-moveit-config, pluginlib, range-v3, rclcpp, rsl, tf2-geometry-msgs, tf2-kdl, tl-expected }:
buildRosPackage {
  pname = "ros-lyrical-pick-ik";
  version = "1.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pick_ik-release/archive/release/lyrical/pick_ik/1.1.1-3.tar.gz";
    name = "1.1.1-3.tar.gz";
    sha256 = "aa97d2f737b1b5866987d6932521381fff515b967ebb0225d513296ab50415ff";
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
