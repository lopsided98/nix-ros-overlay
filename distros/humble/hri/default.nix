
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, hri-msgs, magic-enum, opencv, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-hri";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/humble/hri/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "61200f4ee64286b2ae7398ac18d2cab2f997f9c021394dc68b8216fe55b565e8";
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
