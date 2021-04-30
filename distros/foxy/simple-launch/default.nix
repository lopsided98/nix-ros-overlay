
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-foxy-simple-launch";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/oKermorgant/simple_launch-release/archive/release/foxy/simple_launch/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "5c005f945b9c18437a4f9ba844e2a0ca4e19c43f7b51df69a18279599b78f0ea";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
