
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, spinnaker-camera-driver }:
buildRosPackage {
  pname = "ros-lyrical-spinnaker-synchronized-camera-driver";
  version = "3.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/lyrical/spinnaker_synchronized_camera_driver/3.0.4-3.tar.gz";
    name = "3.0.4-3.tar.gz";
    sha256 = "024bcd49a97ab366ab7fe7e2a60bc533939f83f440ce4e3ec36905d75f754ac0";
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
