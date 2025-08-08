
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, eigen, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-tf2-2d";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf2_2d-release/archive/release/rolling/tf2_2d/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "7a92630c93d2b8217a316b87d35d72db87595eb6b78548ead77493785b6e9aca";
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
