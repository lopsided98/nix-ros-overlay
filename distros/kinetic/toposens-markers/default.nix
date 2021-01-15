
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rostest, rviz-visual-tools, tf2-geometry-msgs, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-markers";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_markers/2.1.1-1";
    name = "archive.tar.gz";
    sha256 = "b0655bf1c10911a7b7ac3bd6ba1e1559f7808292cbd1568ecb2e1dc1547e4caf";
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
