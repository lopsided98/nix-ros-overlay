
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, image-geometry, opencv, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-depthimage-to-laserscan";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/iron/depthimage_to_laserscan/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "823bbbbcce9f340af6b0649007b7a101bdc56c41bed3dac1a48da7ec66333145";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ image-geometry opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''depthimage_to_laserscan'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
