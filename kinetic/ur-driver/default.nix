
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, trajectory-msgs, sensor-msgs, catkin, pythonPackages, actionlib, ur-msgs, rospy, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-ur-driver";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_driver/1.2.1-0.tar.gz;
    sha256 = "26ad11c9d84c2c37d7b5d3ee504aebbe0ec525977b194842cdd2fd3d0d8a39de";
  };

  propagatedBuildInputs = [ actionlib pythonPackages.lxml ur-msgs rospy trajectory-msgs dynamic-reconfigure control-msgs sensor-msgs ];
  nativeBuildInputs = [ catkin dynamic-reconfigure ];

  meta = {
    description = ''Driver for the UR5/10 arm based on the Polyscope control scheme.'';
    #license = lib.licenses.BSD;
  };
}
