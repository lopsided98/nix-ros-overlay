
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rostest, toposens-msgs }:
buildRosPackage {
  pname = "ros-noetic-toposens-driver";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/noetic/toposens_driver/2.3.2-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "411b5006ac4d6785b021a67394a035c06dd439ff88caa6de02a1d85d04c9dda2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for communication with TS sensors.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
