
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, filters, generate-parameter-library, geometry-msgs, hardware-interface, joint-trajectory-controller, kinematics-interface, kinematics-interface-kdl, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, tf2, tf2-eigen, tf2-geometry-msgs, tf2-kdl, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-admittance-controller";
  version = "3.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/admittance_controller/3.10.1-1.tar.gz";
    name = "3.10.1-1.tar.gz";
    sha256 = "aa44c687a8b020e7459903475e0907494b423e9ecb9878fb1618b303b7a688ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager kinematics-interface-kdl ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs control-toolbox controller-interface filters generate-parameter-library geometry-msgs hardware-interface joint-trajectory-controller kinematics-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools tf2 tf2-eigen tf2-geometry-msgs tf2-kdl tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Implementation of admittance controllers for different input and output interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
