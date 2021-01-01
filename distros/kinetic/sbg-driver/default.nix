
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-sbg-driver";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros_driver-release/archive/release/kinetic/sbg_driver/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "838887bfe925827be0dffe19b947363aec9cc738b75601eb68bf663df95b56c9";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver package for communication with the SBG navigation systems.'';
    license = with lib.licenses; [ mit ];
  };
}
