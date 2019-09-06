
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-runtime, toposens-msgs, dynamic-reconfigure, rospy, code-coverage, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-toposens-driver";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_driver/1.2.3-1";
    name = "archive.tar.gz";
    sha256 = "31e3d468ff445c6cf58f93ba80aa97e22ae66f3605911f4962f165abb2e15b23";
  };

  buildType = "catkin";
  buildInputs = [ message-runtime toposens-msgs rospy dynamic-reconfigure roscpp ];
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ message-runtime toposens-msgs rospy dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for communication with TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
