
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, toposens-driver, rviz-visual-tools, rostest, message-runtime, toposens-msgs, rospy, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-toposens-markers";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_markers/1.1.0-1;
    sha256 = "e9d10054c6002b7a17e994ea84ac581bf9b322c7e831ce65c5fbfd1c7bfd9ef7";
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
