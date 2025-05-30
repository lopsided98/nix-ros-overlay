
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoconf, automake, git, libtool, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-lely-core-libraries";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/lely_core_libraries/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "41a8dba7ada0315e0e904c9786fa231faa3f6c1b7b7ffa7d3680629eab1befb8";
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
