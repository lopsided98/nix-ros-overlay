
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, fetch-driver-msgs, catkin, sensor-msgs, roscpp, nav-msgs, fetch-auto-dock-msgs, std-msgs, actionlib, rospy, angles, roslib, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-melodic-fetch-open-auto-dock";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_open_auto_dock-gbp/archive/release/melodic/fetch_open_auto_dock/0.1.2-0.tar.gz;
    sha256 = "73cbede7be9f363559992d9bab141eea8b9c4ac72928fb567e0542cfb0ea7c2a";
  };

  buildInputs = [ tf sensor-msgs fetch-driver-msgs roscpp rospy nav-msgs actionlib fetch-auto-dock-msgs std-msgs angles roslib geometry-msgs eigen ];
  propagatedBuildInputs = [ fetch-driver-msgs sensor-msgs roscpp rospy roslib nav-msgs actionlib fetch-auto-dock-msgs std-msgs tf geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An open-source version of the Fetch charge docking system.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
