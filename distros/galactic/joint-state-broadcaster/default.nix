
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-joint-state-broadcaster";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/galactic/joint_state_broadcaster/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "07a376f14fd143dcc3ccc5a11267bbc3cfc4cc2ff868349aebfdd55e3331fb7f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock controller-manager rclcpp ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface hardware-interface pluginlib rclcpp-lifecycle rcutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Broadcaster to publish joint state'';
    license = with lib.licenses; [ asl20 ];
  };
}
