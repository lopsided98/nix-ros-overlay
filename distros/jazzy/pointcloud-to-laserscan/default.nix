
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, laser-geometry, launch, launch-ros, message-filters, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-pointcloud-to-laserscan";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pointcloud_to_laserscan-release/archive/release/jazzy/pointcloud_to_laserscan/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "0ccf4b5c03d06f7f04ccaa56f89f822ee1d250f503f4163e5f0bcd64af360436";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ laser-geometry launch launch-ros message-filters rclcpp rclcpp-components sensor-msgs tf2 tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Converts a 3D Point Cloud into a 2D laser scan. This is useful for making devices like the Kinect appear like a laser scanner for 2D-based algorithms (e.g. laser-based SLAM).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
