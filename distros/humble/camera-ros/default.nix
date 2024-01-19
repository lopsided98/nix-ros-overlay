
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-lint-auto, camera-info-manager, cv-bridge, libcamera, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-camera-ros";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/camera_ros-release/archive/release/humble/camera_ros/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "f59474661a00d39139e02ec3b6e22015f9a43c79d4a9dd6590ca2c973e2efc6d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-lint-auto ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge libcamera rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''node for libcamera supported cameras (V4L2, Raspberry Pi Camera Modules)'';
    license = with lib.licenses; [ mit ];
  };
}
