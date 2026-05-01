
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, hri-msgs, magic-enum, opencv, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-hri";
  version = "2.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libhri-release/archive/release/lyrical/hri/2.9.0-3.tar.gz";
    name = "2.9.0-3.tar.gz";
    sha256 = "1e23525d6bfef1962a1c689fe1ee48a3bffb0cc0a9fdadcd72e4d81fda99a9ea";
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
