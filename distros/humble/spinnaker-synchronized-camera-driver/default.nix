
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, spinnaker-camera-driver }:
buildRosPackage {
  pname = "ros-humble-spinnaker-synchronized-camera-driver";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/humble/spinnaker_synchronized_camera_driver/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "9217f027d910acd37c015911a18d7f1dfc5451a37d79557298ccfd64b614d68d";
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
