
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, ros-apache2, catkin, rosservice, rospy, std-msgs, pyclearsilver, web-msgs, rosweb, diagnostic-msgs, roslib, launchman }:
buildRosPackage {
  pname = "ros-kinetic-webui";
  version = "1.0.7";

  src = fetchurl {
    url = https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/webui/1.0.7-0.tar.gz;
    sha256 = "8753024f20e58e32a92435fcbf34e9fa99c334a3091c77bb9351540e874adfc0";
  };

  buildInputs = [ std-srvs ros-apache2 rosservice rospy std-msgs pyclearsilver web-msgs rosweb diagnostic-msgs roslib launchman ];
  propagatedBuildInputs = [ std-srvs ros-apache2 rosservice rospy std-msgs pyclearsilver web-msgs rosweb diagnostic-msgs roslib launchman ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A web interface to install and launch applications for the PR2.'';
    #license = lib.licenses.BSD;
  };
}
