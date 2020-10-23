
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rospy, rostest, rviz, rviz-visual-tools, toposens-description, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-markers";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_markers/2.0.4-1";
    name = "archive.tar.gz";
    sha256 = "4e1f41ee78d30ccf6a0dbb7a6a83f51b8e734ac14a89d522c922050780bdb560";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp rospy rviz rviz-visual-tools toposens-description toposens-driver toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz integration for TS sensor data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
