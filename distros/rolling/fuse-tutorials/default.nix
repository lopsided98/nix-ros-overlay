
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, fuse-constraints, fuse-core, fuse-models, fuse-optimizers, fuse-publishers, fuse-variables, nav-msgs, rclcpp, rviz2, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-fuse-tutorials";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_tutorials/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "27e1fc39181eed1a8153531a1443519862c6f3e85bf88a66c827260d327ccf19";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fuse-constraints fuse-core fuse-models fuse-optimizers fuse-publishers fuse-variables nav-msgs rclcpp rviz2 sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Package containing source code for the fuse tutorials.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
