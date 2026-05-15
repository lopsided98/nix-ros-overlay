
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, spinnaker-camera-driver }:
buildRosPackage {
  pname = "ros-lyrical-spinnaker-synchronized-camera-driver";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/lyrical/spinnaker_synchronized_camera_driver/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "ece5bf557d4f547ed8739b8c2329ebb6911bef659fe453aba589647e82a59164";
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
