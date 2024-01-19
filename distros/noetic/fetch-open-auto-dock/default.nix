
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, eigen, fetch-auto-dock-msgs, fetch-driver-msgs, geometry-msgs, nav-msgs, roscpp, roslib, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-fetch-open-auto-dock";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_open_auto_dock-gbp/archive/release/noetic/fetch_open_auto_dock/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "ec396187a30b9ef904c934d7f3bdbf625980138227e511927ada69c8b61fbd6b";
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
