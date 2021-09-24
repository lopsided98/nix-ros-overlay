
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-foxy-simple-launch";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/simple_launch-release/archive/release/foxy/simple_launch/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "b757efbbf85defdce94211a9c275a6db614ab2f605556559b911f81d52381982";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
