
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, rosbag2-cpp, rosbag2-storage, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-bag2-to-image";
  version = "0.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bag2_to_image-release/archive/release/iron/bag2_to_image/0.1.0-4.tar.gz";
    name = "0.1.0-4.tar.gz";
    sha256 = "4509c13adc59dc2e44486506ba7fcf7b2b60191e92e62eff8f8a46b10a42362f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp rclcpp-components rosbag2-cpp rosbag2-storage sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The bag2_to_image package'';
    license = with lib.licenses; [ asl20 ];
  };
}
