
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, launch-pytest, rclcpp, rclcpp-components, rclpy, vimbax-camera-events, vimbax-camera-msgs }:
buildRosPackage {
  pname = "ros-humble-vimbax-camera-examples";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vimbax_ros2_driver-release/archive/release/humble/vimbax_camera_examples/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "385598d378f85b0629675c76ff3dd98d2d426f9af05a5d2837a46b070af1c84c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-pytest ];
  propagatedBuildInputs = [ cv-bridge image-transport rclcpp rclcpp-components rclpy vimbax-camera-events vimbax-camera-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "VimbaX camera examples";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
