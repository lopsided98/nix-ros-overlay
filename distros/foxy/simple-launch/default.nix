
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-foxy-simple-launch";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/simple_launch-release/archive/release/foxy/simple_launch/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "f3d0a0486141ce1946be4871af8bece2e04b6e3fbc111ad87bf6305bd8851f52";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
