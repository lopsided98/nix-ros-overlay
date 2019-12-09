
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, catkin, urdf }:
buildRosPackage {
  pname = "ros-kinetic-create-description";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_create-release/archive/release/kinetic/create_description/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "3ea31a8af2614e2017e9ddf7e8ec52d583387da1ddf08f01a2785dc7c59bdad1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Model description for the iRobot Create'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
