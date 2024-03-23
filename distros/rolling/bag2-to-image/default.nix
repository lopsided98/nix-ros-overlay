
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, rosbag2-cpp, rosbag2-storage, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-bag2-to-image";
  version = "0.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bag2_to_image-release/archive/release/rolling/bag2_to_image/0.1.0-4.tar.gz";
    name = "0.1.0-4.tar.gz";
    sha256 = "c75b5a32ed52bb786f95f4503d42991963c101366aa7d067bb006113283bb156";
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
