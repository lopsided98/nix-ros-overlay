
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, launch-pytest, rclcpp, rclcpp-components, rclpy, vimbax-camera-events, vimbax-camera-msgs }:
buildRosPackage {
  pname = "ros-humble-vimbax-camera-examples";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vimbax_ros2_driver-release/archive/release/humble/vimbax_camera_examples/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "a172c03cf9970c7c65b9cb47dee8e938af54bdba1b091fba88e9f61dbceea2bd";
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
