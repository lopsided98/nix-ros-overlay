
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-iron-ros-workspace";
  version = "1.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/iron/ros_workspace/1.0.3-4.tar.gz";
    name = "1.0.3-4.tar.gz";
    sha256 = "1ca52b1906a01b32156e027f0cf8bb4ebce73876a18d05a00bfb18a2380299da";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
