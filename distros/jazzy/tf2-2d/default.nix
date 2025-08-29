
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, eigen, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-tf2-2d";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf2_2d-release/archive/release/jazzy/tf2_2d/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "18fed90edcd396421bf98b233638ff26549635ee385e4f6be22bfe4bbcb3dbf4";
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
