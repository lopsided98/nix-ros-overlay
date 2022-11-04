
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rocon-std-msgs, roslib, rospy, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rocon-python-utils";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_python_utils/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "276c59565857a8553d7b92113ae9c7567bcb2eeee5ea5f517e91066a3346704f";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.catkin-pkg pythonPackages.rospkg rocon-std-msgs roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python system and ros utilities.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
