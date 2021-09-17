
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-foxy-simple-launch";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/simple_launch-release/archive/release/foxy/simple_launch/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "db66305a0e7f9bdb0355832a6243abd3686d19228e60b7a745817ab4f8833757";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
