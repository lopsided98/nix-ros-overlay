
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoconf, automake, git, libtool, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-lely-core-libraries";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/lely_core_libraries/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "4ee00d19b07c43c7c8cf23a10acfe32ccefcdce6e3854e0ba6ec2c00f247b434";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake autoconf automake git libtool ];
  propagatedBuildInputs = [ python3Packages.empy python3Packages.pyyaml ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS wrapper for lely-core-libraries";
    license = with lib.licenses; [ asl20 ];
  };
}
