
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, pythonPackages, rospy, rostest, sensor-msgs, smach, smach-ros, smacha, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-smacha-ros";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ReconCell/smacha-release/archive/release/kinetic/smacha_ros/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "5046bc14cfaac5a9ecb94ce7754a6d225b629ce8c7a4808807c796259a49265c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ pythonPackages.unittest2 rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime rospy sensor-msgs smach smach-ros smacha std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SMACHA ROS is a package that provides ROS integration for SMACHA. Its main component is a SMACHA server that allows for templates to be loaded from disparate packages and accessed from anywhere within the ROS network and provides services for each of the main SMACHA functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
