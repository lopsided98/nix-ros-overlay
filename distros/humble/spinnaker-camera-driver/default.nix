
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, camera-info-manager, flir-camera-msgs, image-transport, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-spinnaker-camera-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/humble/spinnaker_camera_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "3f920f77e4e7ea8604179e704d67c41f85332711e7eb2f2021fe0bc704c89df2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager flir-camera-msgs image-transport rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 driver for flir spinnaker sdk'';
    license = with lib.licenses; [ "Apache-2" ];
  };
}
