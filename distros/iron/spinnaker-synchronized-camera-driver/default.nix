
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, spinnaker-camera-driver }:
buildRosPackage {
  pname = "ros-iron-spinnaker-synchronized-camera-driver";
  version = "2.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/iron/spinnaker_synchronized_camera_driver/2.2.13-1.tar.gz";
    name = "2.2.13-1.tar.gz";
    sha256 = "953579f0479e5d5f5245eba3d17ae1346a5aefed44af8f6914784328e964750c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-black ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components spinnaker-camera-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 driver for synchronized flir cameras using the Spinnaker SDK'';
    license = with lib.licenses; [ "Apache-2" ];
  };
}
