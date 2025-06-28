
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fuse-constraints, fuse-core, fuse-models, fuse-optimizers, fuse-publishers, fuse-variables, gtest-vendor, nav-msgs, rclcpp, rviz2, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-fuse-tutorials";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/kilted/fuse_tutorials/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "0783bef890afa8f73200891a03d1fa271dc0d613aeafe2c2c97cd8c4f43bca9f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-ros fuse-constraints fuse-core fuse-models fuse-optimizers fuse-publishers fuse-variables gtest-vendor nav-msgs rclcpp rviz2 sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing source code for the fuse tutorials.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
