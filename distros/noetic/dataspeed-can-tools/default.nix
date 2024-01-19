
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, rosbag, roscpp, roslib, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-can-tools";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/noetic/dataspeed_can_tools/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "8feafa2c97762920a39d19000342a5b43249ca61c87d80858fde32302dbeb83d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ can-msgs rosbag roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus introspection'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
