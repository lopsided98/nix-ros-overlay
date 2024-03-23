
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, fuse-constraints, fuse-core, fuse-models, fuse-optimizers, fuse-publishers, fuse-variables, nav-msgs, rclcpp, rviz2, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-fuse-tutorials";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_tutorials/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "16042b7cdb25a88fcb03ccdfd68e540cd63eb141f257a4547a0671696a916188";
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
