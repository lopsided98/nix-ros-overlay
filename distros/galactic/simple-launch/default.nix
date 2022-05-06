
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-galactic-simple-launch";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/simple_launch-release/archive/release/galactic/simple_launch/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "32f00772530a8edb683687837ca469ddc6dd2b738c6704e2eba49c85124efc0b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
