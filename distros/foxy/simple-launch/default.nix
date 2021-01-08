
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-foxy-simple-launch";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/simple_launch-release/archive/release/foxy/simple_launch/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "22079e33c9597f1fdd2da1f08db2f4073cffe4fa55f5083b3b0bcf325cbe22da";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
