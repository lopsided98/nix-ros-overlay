
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, hri-msgs, magic-enum, opencv, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-hri";
  version = "2.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libhri-release/archive/release/rolling/hri/2.9.0-2.tar.gz";
    name = "2.9.0-2.tar.gz";
    sha256 = "2072c65250dfe2b31a2df72f4cb3e7d53755e1dc3e02b2c86f7fac86a23b1ac4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto magic-enum ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hri-msgs opencv opencv.cxxdev rclcpp rclcpp-lifecycle sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A wrapper library around the ROS4HRI ROS topics";
    license = with lib.licenses; [ asl20 ];
  };
}
