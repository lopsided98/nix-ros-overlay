
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rostest, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-driver";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_driver/2.1.1-1";
    name = "archive.tar.gz";
    sha256 = "1d82ae38c455f2eaff688162d46b1a4d4383672a05f09cc2548a7460f0dc9fce";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for communication with TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
