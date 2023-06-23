
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoconf, automake, git, libtool, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-lely-core-libraries";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/lely_core_libraries/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "6da08043f81f00d880cf9994d5558fae7c3fb8dfd4c718e13e20def1d03ab585";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake autoconf automake git libtool ];
  propagatedBuildInputs = [ python3Packages.empy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS wrapper for lely-core-libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
