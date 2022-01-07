
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, controller-manager, hardware-interface, joint-state-broadcaster, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-foxy-joint-state-controller";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/joint_state_controller/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "40b56fa010177893f2b4f4b79c91d8479ecfe5ba4863d5492929e9f8beaad4a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface rclcpp ros2-control-test-assets ];
  propagatedBuildInputs = [ joint-state-broadcaster ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller to publish joint state'';
    license = with lib.licenses; [ asl20 ];
  };
}
