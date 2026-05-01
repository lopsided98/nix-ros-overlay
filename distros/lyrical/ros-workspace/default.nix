
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-lyrical-ros-workspace";
  version = "1.0.3-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/lyrical/ros_workspace/1.0.3-9.tar.gz";
    name = "1.0.3-9.tar.gz";
    sha256 = "229e101516ce83b6df8d558f9fda2df2f8ea871052a84b7642f5359843ab8bd8";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Provides the prefix level environment files for ROS 2 packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
