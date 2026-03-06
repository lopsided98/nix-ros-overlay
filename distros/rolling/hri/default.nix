
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, hri-msgs, magic-enum, opencv, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-hri";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/rolling/hri/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "13fa43780ddaac9892b0de305d1797a7488f21e409d0851f164cd0c13e715817";
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
