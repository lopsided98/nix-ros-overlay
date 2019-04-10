
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rosmsg, rqt-gui, rqt-msg, rospy }:
buildRosPackage {
  pname = "ros-lunar-rqt-srv";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_srv-release/archive/release/lunar/rqt_srv/0.4.8-0.tar.gz;
    sha256 = "f2303a52fffc0e96fe2e955b3fd8126b7a09f117cc2d0cbe974ce4e65901134c";
  };

  propagatedBuildInputs = [ rqt-msg rqt-gui-py rosmsg rospy rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the srvs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    #license = lib.licenses.BSD;
  };
}
