
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, spinnaker-camera-driver }:
buildRosPackage {
  pname = "ros-kilted-spinnaker-synchronized-camera-driver";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/kilted/spinnaker_synchronized_camera_driver/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "4c87b6eb37bbadb5fc77f1e4b3b1a64825e2d8356fba2551c752f19bb4f50583";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-black ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components spinnaker-camera-driver ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "ROS2 driver for synchronized flir cameras using the Spinnaker SDK";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
