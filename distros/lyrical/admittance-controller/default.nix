
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, angles, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, hardware-interface-testing, kinematics-interface, kinematics-interface-kdl, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, tf2, tf2-eigen, tf2-geometry-msgs, tf2-kdl, tf2-ros, tinyxml-2, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-admittance-controller";
  version = "6.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/lyrical/admittance_controller/6.6.0-3.tar.gz";
    name = "6.6.0-3.tar.gz";
    sha256 = "87be005fd3c1ca67bc064d23b994d36c05bebf2655ba8b6e7921941498130171";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing kinematics-interface-kdl ros2-control-test-assets ];
  propagatedBuildInputs = [ angles backward-ros control-msgs control-toolbox controller-interface generate-parameter-library geometry-msgs hardware-interface kinematics-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools tf2 tf2-eigen tf2-geometry-msgs tf2-kdl tf2-ros tinyxml-2 trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Implementation of admittance controllers for different input and output interface.";
    license = with lib.licenses; [ asl20 ];
  };
}
