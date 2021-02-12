
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rostest, rviz-visual-tools, tf2-geometry-msgs, toposens-description, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-noetic-toposens-markers";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/noetic/toposens_markers/2.2.0-1";
    name = "archive.tar.gz";
    sha256 = "cfe0ca9899df0092010c8712a2cc6de68413fb6a702858279a77257e5ecc8e8e";
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
