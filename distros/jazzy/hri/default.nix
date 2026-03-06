
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, hri-msgs, magic-enum, opencv, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-hri";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/jazzy/hri/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "8dfb9f8b145fe4266108a2bc78452ad94c5fef87f66722d0f3c1a5dd7da0c24f";
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
