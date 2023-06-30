
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoconf, automake, git, libtool, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-lely-core-libraries";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/lely_core_libraries/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "f0c38eb7b26a7963586cdc883167a2d10abd2016b62c69212563de7bef8230a8";
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
