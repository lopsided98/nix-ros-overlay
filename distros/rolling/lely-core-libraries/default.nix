
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoconf, automake, git, libtool, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-lely-core-libraries";
  version = "0.2.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/lely_core_libraries/0.2.8-1.tar.gz";
    name = "0.2.8-1.tar.gz";
    sha256 = "dcc7ab8e53eddf3d4293c551c0ccb7ccc63c9561137d88291070af98de1bbadc";
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
