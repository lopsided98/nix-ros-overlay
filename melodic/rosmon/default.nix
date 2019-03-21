
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosmon-core, rqt-rosmon }:
buildRosPackage {
  pname = "ros-melodic-rosmon";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/xqms/rosmon-release/archive/release/melodic/rosmon/2.0.2-0.tar.gz;
    sha256 = "86889a64f484e3a77ff9c176c3c47c185e7c2d1e6a748885e2f658344bbad92a";
  };

  propagatedBuildInputs = [ rosmon-core rqt-rosmon ];
  nativeBuildInputs = [ catkin rosmon-core rqt-rosmon ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    #license = lib.licenses.BSD;
  };
}
