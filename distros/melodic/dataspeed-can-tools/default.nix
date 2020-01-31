
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, rosbag, roscpp, roslib, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-tools";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_tools/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "60a79fceef9b5289c77cb08e01703866dca33f86e62bcf6deda2dc8b8b55571e";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ can-msgs rosbag roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus introspection'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
