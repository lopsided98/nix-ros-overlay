
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-galactic-simple-launch";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/simple_launch-release/archive/release/galactic/simple_launch/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "e27bd988f504871bbfddc8c802b77045eb14a23b6e6621de22f8306b09a32c10";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
