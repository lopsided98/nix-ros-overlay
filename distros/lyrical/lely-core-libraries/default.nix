
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoconf, automake, git, libtool, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-lely-core-libraries";
  version = "0.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/lyrical/lely_core_libraries/0.3.2-3.tar.gz";
    name = "0.3.2-3.tar.gz";
    sha256 = "83e4ccc9c452129a0a857f993d07748a47a5e53eb21b5097e4abe7526204182b";
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
