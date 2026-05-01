
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, tf2-msgs }:
buildRosPackage {
  pname = "ros-lyrical-pose-broadcaster";
  version = "6.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/lyrical/pose_broadcaster/6.6.0-3.tar.gz";
    name = "6.6.0-3.tar.gz";
    sha256 = "72f15e323a17c2086eb9639b4ae7d86bf99ed2ff67a5667d87fcbf3a7df15f6b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface generate-parameter-library geometry-msgs pluginlib rclcpp rclcpp-lifecycle realtime-tools tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Broadcaster to publish cartesian states.";
    license = with lib.licenses; [ asl20 ];
  };
}
