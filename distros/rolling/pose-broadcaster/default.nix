
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-pose-broadcaster";
  version = "6.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/pose_broadcaster/6.3.0-1.tar.gz";
    name = "6.3.0-1.tar.gz";
    sha256 = "51a262b5736b010e3e7b2e8db44fd8aae5dd327894bb3cb72a62d16ef6a899e0";
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
