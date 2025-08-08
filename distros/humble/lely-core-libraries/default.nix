
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoconf, automake, git, libtool, python3Packages }:
buildRosPackage {
  pname = "ros-humble-lely-core-libraries";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/humble/lely_core_libraries/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "9a47ba14eb340a2e639e8cc9867f49d4b663eec586c984d5bae6be4aac100895";
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
