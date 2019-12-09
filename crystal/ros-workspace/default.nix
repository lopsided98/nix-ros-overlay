
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-package, ament-cmake-core, cmake }:
buildRosPackage {
  pname = "ros-crystal-ros-workspace";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/crystal/ros_workspace/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "b5806c6fd73383283d4a4eacb5026d308d9d8e1d0039a4ad115e9fda957062f9";
  };

  buildType = "cmake";
  buildInputs = [ ament-package ament-cmake-core ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
