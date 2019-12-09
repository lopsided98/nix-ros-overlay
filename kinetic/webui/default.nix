
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosweb, diagnostic-msgs, std-msgs, std-srvs, catkin, roslib, ros-apache2, launchman, pyclearsilver, rospy, rosservice, web-msgs }:
buildRosPackage {
  pname = "ros-kinetic-webui";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/webui/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "8753024f20e58e32a92435fcbf34e9fa99c334a3091c77bb9351540e874adfc0";
  };

  buildType = "catkin";
  buildInputs = [ rosweb diagnostic-msgs std-msgs std-srvs roslib ros-apache2 launchman pyclearsilver rospy rosservice web-msgs ];
  propagatedBuildInputs = [ rosweb diagnostic-msgs std-msgs std-srvs roslib ros-apache2 launchman pyclearsilver rospy rosservice web-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A web interface to install and launch applications for the PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
