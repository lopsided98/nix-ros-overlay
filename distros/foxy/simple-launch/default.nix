
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-foxy-simple-launch";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/simple_launch-release/archive/release/foxy/simple_launch/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "8d94b7d8fe2531534a5445471759c0cfa77a4bc92fc7a385c1dc422a31ddebb4";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
