
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, builtin-interfaces, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-joint-state-broadcaster";
  version = "4.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/joint_state_broadcaster/4.12.0-1.tar.gz";
    name = "4.12.0-1.tar.gz";
    sha256 = "c75156d9b690eda94ecea6fe80b7d6f5b886528cf0f8d5d7aeff83b4d0e3c144";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface hardware-interface-testing rclcpp ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros builtin-interfaces control-msgs controller-interface generate-parameter-library pluginlib rclcpp-lifecycle rcutils realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Broadcaster to publish joint state";
    license = with lib.licenses; [ asl20 ];
  };
}
