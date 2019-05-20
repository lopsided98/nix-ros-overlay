
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, toposens-driver, rviz-visual-tools, rostest, message-runtime, toposens-msgs, rospy, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-toposens-markers";
  version = "1.0.0-r3";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_markers/1.0.0-3;
    sha256 = "567a3acef1e9ecac4d75856dff429864a9ef58258de1ec506d4795fb7ce1a686";
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
