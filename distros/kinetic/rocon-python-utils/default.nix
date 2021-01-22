
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rocon-std-msgs, roslib, rospy, rostest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rocon-python-utils";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_python_utils/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "ed10061311156b7194caade3b6f27493ef7652f4c3b4e498867bc3815afe23b0";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.catkin-pkg pythonPackages.rospkg rocon-std-msgs roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python system and ros utilities.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
