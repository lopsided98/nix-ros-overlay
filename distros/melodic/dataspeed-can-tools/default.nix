
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, rosbag, roscpp, roslib, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-tools";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_tools/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "ecbc5514862e8d5eaf6407cace95e369a6dd770cb2853f81e267635e1c3cef87";
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
