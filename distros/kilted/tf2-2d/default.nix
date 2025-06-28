
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, eigen, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-tf2-2d";
  version = "1.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf2_2d-release/archive/release/kilted/tf2_2d/1.0.1-4.tar.gz";
    name = "1.0.1-4.tar.gz";
    sha256 = "44c45aa564f1aaec7941c24d4ce516723f9428b8385f78e6cab822863f310a0a";
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
