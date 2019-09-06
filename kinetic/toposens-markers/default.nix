
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, toposens-driver, rviz-visual-tools, rostest, message-runtime, toposens-msgs, rospy, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-toposens-markers";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_markers/1.2.3-1";
    name = "archive.tar.gz";
    sha256 = "bf128b0006cef6e6eb331b94284d3cc36e6951d754db2c2a20bfe2d432617a41";
  };

  buildType = "catkin";
  buildInputs = [ toposens-driver rviz-visual-tools message-runtime toposens-msgs rospy dynamic-reconfigure roscpp ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ toposens-driver rviz-visual-tools message-runtime toposens-msgs rospy dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz integration for TS sensor data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
