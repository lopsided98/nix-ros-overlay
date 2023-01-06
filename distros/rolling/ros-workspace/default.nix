
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-rolling-ros-workspace";
  version = "1.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/rolling/ros_workspace/1.0.2-5.tar.gz";
    name = "1.0.2-5.tar.gz";
    sha256 = "6bbc9429ee4b00bf29feeb73f2c123035fd1967cc2ac698fadd7fd6bd286af59";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
