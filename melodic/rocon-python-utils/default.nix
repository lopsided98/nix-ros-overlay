
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rostest, rospy, roslib, rosunit, rocon-std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rocon-python-utils";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_python_utils/0.3.2-0.tar.gz;
    sha256 = "276c59565857a8553d7b92113ae9c7567bcb2eeee5ea5f517e91066a3346704f";
  };

  buildInputs = [ rostest pythonPackages.catkin-pkg ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rospy pythonPackages.rospkg pythonPackages.catkin-pkg roslib rocon-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python system and ros utilities.'';
    #license = lib.licenses.BSD;
  };
}
