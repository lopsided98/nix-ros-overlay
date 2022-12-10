
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-galactic-ros-environment";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/galactic/ros_environment/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "c546cda40844bfd60cf6063ee8e52e43b4bab1db7be18c0ca8b114b2b4d1ab95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
