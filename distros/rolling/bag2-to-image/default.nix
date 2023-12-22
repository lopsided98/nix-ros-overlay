
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, rosbag2-cpp, rosbag2-storage, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-bag2-to-image";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bag2_to_image-release/archive/release/rolling/bag2_to_image/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "8486c3a5f5cddf7db34221aadeed61e79c6ece0368c7e155631a7d0c3c31fb6e";
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
