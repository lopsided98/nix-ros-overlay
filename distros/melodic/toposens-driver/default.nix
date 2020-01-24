
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rospy, rostest, toposens-msgs }:
buildRosPackage {
  pname = "ros-melodic-toposens-driver";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_driver/2.0.1-1";
    name = "archive.tar.gz";
    sha256 = "350f81e9f95eb1cb3ae1d689dcf6223c7340ea12269eb5f14e0be8750cde254b";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp rospy toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for communication with TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
