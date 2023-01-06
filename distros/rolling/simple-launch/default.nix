
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-rolling-simple-launch";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/rolling/simple_launch/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "f51e67d1d8402becaba76b41df1ff2e10633427644728396aef538f1f8d9f2a7";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
