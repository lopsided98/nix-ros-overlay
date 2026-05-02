
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, eigen, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-tf2-2d";
  version = "1.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf2_2d-release/archive/release/rolling/tf2_2d/1.6.1-2.tar.gz";
    name = "1.6.1-2.tar.gz";
    sha256 = "c6f71f36e4788a3ed47a224c1a453e8651291f70e5a07994ccb53ffb2629ab2a";
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
