
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, toposens-driver, rviz-visual-tools, rostest, message-runtime, toposens-msgs, rospy, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-toposens-markers";
  version = "1.2.2-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_markers/1.2.2-1;
    sha256 = "a4bb27f612794a03c0d5b61579dc9d1d2b485f7297725e3e7f20490897042039";
  };

  buildInputs = [ toposens-driver rviz-visual-tools message-runtime toposens-msgs rospy dynamic-reconfigure roscpp ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ toposens-driver rviz-visual-tools message-runtime toposens-msgs rospy dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz integration for TS sensor data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
