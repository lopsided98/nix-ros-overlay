
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, angles, controller-manager, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, launch-testing, picknik-ament-copyright, rclcpp, rclpy, robot-state-publisher, ros-testing, ros2-control-test-assets, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-topic-based-ros2-control";
  version = "0.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_ros2_control-release/archive/release/jazzy/topic_based_ros2_control/0.3.0-4.tar.gz";
    name = "0.3.0-4.tar.gz";
    sha256 = "ce74edf9edeab48102b856cdb467c9086a854150d1bcc1ee17577ce3306ab9bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common controller-manager joint-state-broadcaster joint-trajectory-controller launch launch-ros launch-testing picknik-ament-copyright rclpy robot-state-publisher ros-testing ros2-control-test-assets xacro ];
  propagatedBuildInputs = [ angles hardware-interface rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2 control hardware interface for topic_based sim";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
