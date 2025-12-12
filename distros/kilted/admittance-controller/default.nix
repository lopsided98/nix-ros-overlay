
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, angles, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, hardware-interface-testing, kinematics-interface, kinematics-interface-kdl, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, tf2, tf2-eigen, tf2-geometry-msgs, tf2-kdl, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-admittance-controller";
  version = "5.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/admittance_controller/5.11.0-1.tar.gz";
    name = "5.11.0-1.tar.gz";
    sha256 = "9f9b964e6b7d4785585b73be2be14849573937a8f299c92414fbfa33423051a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing kinematics-interface-kdl ros2-control-test-assets ];
  propagatedBuildInputs = [ angles backward-ros control-msgs control-toolbox controller-interface generate-parameter-library geometry-msgs hardware-interface kinematics-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools tf2 tf2-eigen tf2-geometry-msgs tf2-kdl tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Implementation of admittance controllers for different input and output interface.";
    license = with lib.licenses; [ asl20 ];
  };
}
