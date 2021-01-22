
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, dynamic-reconfigure, pythonPackages, rospy, sensor-msgs, trajectory-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ur-driver";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_driver/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "291b344f527d70a57439cc69bda44b234a9cb7990c44c98d0f1d22f160bf514d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs dynamic-reconfigure pythonPackages.lxml rospy sensor-msgs trajectory-msgs ur-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the UR5/10 arm based on the Polyscope control scheme.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
