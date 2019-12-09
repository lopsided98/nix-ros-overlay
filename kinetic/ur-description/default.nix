
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, xacro, urdf, robot-state-publisher, catkin, rviz }:
buildRosPackage {
  pname = "ros-kinetic-ur-description";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_description/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "90662f9e30d7ccd4ea7e72c02508e250efad68796e6c3084b5e76a50eed2e421";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher xacro urdf robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description for Universal UR5/10 robot arms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
