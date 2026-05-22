
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fuse-constraints, fuse-core, fuse-models, fuse-optimizers, fuse-publishers, fuse-variables, gtest-vendor, nav-msgs, rclcpp, rviz2, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-fuse-tutorials";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/lyrical/fuse_tutorials/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "beef551a26b6c576fafcb6132c149cd7bdba1523d27cacfe8d1e2dbdb186de89";
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
