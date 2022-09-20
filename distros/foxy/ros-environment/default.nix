
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-ros-environment";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/foxy/ros_environment/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "8d594c0fd0788f084b93283c11cf3991e5bdaf76b666c1b602b4df7ca7019ce8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
