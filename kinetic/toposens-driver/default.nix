
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, code-coverage, toposens-msgs, catkin, rospy, roscpp, message-runtime, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-toposens-driver";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_driver/1.3.0-1";
    name = "archive.tar.gz";
    sha256 = "b51ce477d8d8ec3c157a74b0e56bfe6c0232d8dde7cda28a551bbc40b868939b";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure toposens-msgs rospy roscpp message-runtime ];
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure toposens-msgs rospy roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for communication with TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
