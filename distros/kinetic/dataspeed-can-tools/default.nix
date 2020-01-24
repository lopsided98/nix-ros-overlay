
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, rosbag, roscpp, roslib, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-can-tools";
  version = "1.0.14-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/kinetic/dataspeed_can_tools/1.0.14-1.tar.gz";
    name = "1.0.14-1.tar.gz";
    sha256 = "1add1a92e88108a628f0760e7b4de9b0823c5ef803662980f3d7bf0069236083";
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
