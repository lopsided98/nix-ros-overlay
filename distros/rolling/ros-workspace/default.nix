
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-rolling-ros-workspace";
  version = "1.0.3-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/rolling/ros_workspace/1.0.3-7.tar.gz";
    name = "1.0.3-7.tar.gz";
    sha256 = "1b128b097438e8b3d6f68b1dacebd72b0047a673b23b8e92a3f7c5409e9513d1";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Provides the prefix level environment files for ROS 2 packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
