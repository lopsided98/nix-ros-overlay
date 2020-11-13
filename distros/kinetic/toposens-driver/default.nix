
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rostest, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-driver";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_driver/2.1.0-1";
    name = "archive.tar.gz";
    sha256 = "91ba54fcbf9cbdf7485b5c99cf7d448a139365f4835616629019f8578cf26fc5";
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
