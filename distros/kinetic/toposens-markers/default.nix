
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rospy, rostest, rviz-visual-tools, toposens-description, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-markers";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_markers/2.0.1-1";
    name = "archive.tar.gz";
    sha256 = "0e09e6b1620ffc93de23668504e4cc5209f9500d7206b7b77bdc5ba1813c125f";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp rospy rviz-visual-tools toposens-description toposens-driver toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz integration for TS sensor data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
