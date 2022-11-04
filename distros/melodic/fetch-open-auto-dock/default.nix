
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, eigen, fetch-auto-dock-msgs, fetch-driver-msgs, geometry-msgs, nav-msgs, roscpp, roslib, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-fetch-open-auto-dock";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_open_auto_dock-gbp/archive/release/melodic/fetch_open_auto_dock/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "73cbede7be9f363559992d9bab141eea8b9c4ac72928fb567e0542cfb0ea7c2a";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin ];
  propagatedBuildInputs = [ actionlib eigen fetch-auto-dock-msgs fetch-driver-msgs geometry-msgs nav-msgs roscpp roslib rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An open-source version of the Fetch charge docking system.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
