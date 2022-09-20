
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry2, kdl-parser, robot-state-publisher, ros-core, rosbag2, urdf }:
buildRosPackage {
  pname = "ros-foxy-ros-base";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/foxy/ros_base/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "17b2a81b60bdf088408d1a349ca4c558ea69f70a90f30598dde5daae74786f23";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry2 kdl-parser robot-state-publisher ros-core rosbag2 urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_core' and includes other basic functionalities like tf2 and urdf.'';
    license = with lib.licenses; [ asl20 ];
  };
}
