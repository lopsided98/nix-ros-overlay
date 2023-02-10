
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-joint-state-broadcaster";
  version = "2.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/joint_state_broadcaster/2.16.1-1.tar.gz";
    name = "2.16.1-1.tar.gz";
    sha256 = "883a4157d7f3bf79d36ca2e7ff2a517e73ffef794218cf6470fd8a5b1dbf0d8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager rclcpp ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs controller-interface generate-parameter-library hardware-interface pluginlib rclcpp-lifecycle rcutils realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Broadcaster to publish joint state'';
    license = with lib.licenses; [ asl20 ];
  };
}
