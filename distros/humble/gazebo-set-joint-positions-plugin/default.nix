
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-ros, gazebo-ros-pkgs, joint-state-publisher, launch-testing-ament-cmake, rclcpp, robot-state-publisher, ros2launch, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-gazebo-set-joint-positions-plugin";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_set_joint_positions_plugin-release/archive/release/humble/gazebo_set_joint_positions_plugin/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "8dffbe70738d55616299d08cac8142b2aee0c19c0a3d36ce08b2c8c89f9618c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ gazebo-ros-pkgs joint-state-publisher launch-testing-ament-cmake robot-state-publisher ros2launch urdf xacro ];
  propagatedBuildInputs = [ gazebo-dev gazebo-ros rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Set gazebo robot joint positions";
    license = with lib.licenses; [ asl20 ];
  };
}
