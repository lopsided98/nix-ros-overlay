
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, eigen, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-tf2-2d";
  version = "1.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf2_2d-release/archive/release/lyrical/tf2_2d/1.6.1-3.tar.gz";
    name = "1.6.1-3.tar.gz";
    sha256 = "87081d05fdf1dc8385aa9e72c523b6acd1cbb475e48b0201f1e7ea1f37f29cf5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost eigen rclcpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of 2D geometry classes modeled after the 3D geometry classes in tf2.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
