
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosmsg, rospy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-melodic-rqt-srv";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_srv-release/archive/release/melodic/rqt_srv/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "601cd2f2679ebf45e306a1b9e6ddaca9dcbb2c614c26cdedc87e2e65c1c2571f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosmsg rospy rqt-gui rqt-gui-py rqt-msg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the srvs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
