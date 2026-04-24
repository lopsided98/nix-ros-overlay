
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, rosbag2-cpp, rosbag2-storage, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-bag2-to-image";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bag2_to_image-release/archive/release/rolling/bag2_to_image/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "80e6cc2b5684c68e695394c37464e7c978a26eb5b3a54c719420cce0f4a37165";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp rclcpp-components rosbag2-cpp rosbag2-storage sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The bag2_to_image package";
    license = with lib.licenses; [ asl20 ];
  };
}
