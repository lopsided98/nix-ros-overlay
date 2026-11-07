
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, angles, control-msgs, hardware-interface, rclcpp, realtime-tools, ros2-control-cmake, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-joint-command-topic-hardware-interface";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_hardware-release/archive/release/rolling/joint_command_topic_hardware_interface/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "e22366eaffc7e8b0c3664f663409c263ffee2987a9254ddc1ed938da29d1c8f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ angles control-msgs hardware-interface rclcpp realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control hardware interface for JointCommand topic based control";
    license = with lib.licenses; [ asl20 ];
  };
}
