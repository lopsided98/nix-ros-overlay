
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-pose-broadcaster";
  version = "4.43.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/pose_broadcaster/4.43.1-1.tar.gz";
    name = "4.43.1-1.tar.gz";
    sha256 = "9ad11bbdade70930b4a4ea58b3d602b5b4f5e544cff897b18ccb6c4128d38dc2";
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
