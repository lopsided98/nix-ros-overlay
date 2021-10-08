
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-foxy-simple-launch";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/simple_launch-release/archive/release/foxy/simple_launch/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "7ea89fc795caffc229159afefb4ec51e08a0cb3f09dd83c91a7c2cdfa441dab7";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
