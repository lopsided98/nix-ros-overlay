
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rostest, rviz-visual-tools, tf2-geometry-msgs, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-markers";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_markers/2.1.0-1";
    name = "archive.tar.gz";
    sha256 = "f6ae455663166bb99aacd30142a288bd82a5f9eee69fdf891c7379d5e77d7f95";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp rviz-visual-tools tf2-geometry-msgs toposens-driver toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz integration for TS sensor data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
