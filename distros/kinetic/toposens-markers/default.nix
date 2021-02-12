
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rostest, rviz-visual-tools, tf2-geometry-msgs, toposens-description, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-markers";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_markers/2.2.0-3";
    name = "archive.tar.gz";
    sha256 = "519220ef0f8568492cc1c1679a057d804bab9f3c37ae917f162b12ec58cc9412";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp rviz-visual-tools tf2-geometry-msgs toposens-description toposens-driver toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz integration for TS sensor data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
