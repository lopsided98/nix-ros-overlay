
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, builtin-interfaces, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-kilted-joint-state-broadcaster";
  version = "5.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/joint_state_broadcaster/5.8.0-1.tar.gz";
    name = "5.8.0-1.tar.gz";
    sha256 = "1ff9148bd1ae4f6f8f3994c616af35f6cc969b5678f0de02bff318f453efe99d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros builtin-interfaces control-msgs controller-interface generate-parameter-library pluginlib rclcpp rclcpp-lifecycle realtime-tools sensor-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Broadcaster to publish joint state";
    license = with lib.licenses; [ asl20 ];
  };
}
