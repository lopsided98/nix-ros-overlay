
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-dashing-ros-workspace";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/dashing/ros_workspace/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "591b29f43aa835764a290c11483f0a81f54b576f9fe20f61adf9569809ab60ed";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
