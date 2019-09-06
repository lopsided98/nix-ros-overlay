
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, toposens-driver, rviz-visual-tools, rostest, message-runtime, toposens-msgs, rospy, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-toposens-markers";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_markers/1.2.3-1";
    name = "archive.tar.gz";
    sha256 = "1ee518a3d6812303fe5c48c7b02fc8590d95a34c4458fa81ffd052af0d2d4375";
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
