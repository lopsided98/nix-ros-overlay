
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosjson, roslib, rospy, rosservice, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosweb";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/rosweb/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "7124fe8b1cdec6255f85ddb27db8a629a5d65e43dd54dfeeb884da418a623d4f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosjson roslib rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosweb is a temporary package to replace the original rosweb in the ROS
     repository.  It is placed in the sandbox while development is ongoing, so
     we are not gated on ROS stack releases.  When the server is more stable,
     it will be moved to the ROS repository and replace the old rosweb.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
