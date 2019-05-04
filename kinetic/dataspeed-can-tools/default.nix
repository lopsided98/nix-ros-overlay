
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, can-msgs, roscpp, rostest, std-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-can-tools";
  version = "1.0.12";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/kinetic/dataspeed_can_tools/1.0.12-0.tar.gz;
    sha256 = "14a74d0bb116451af43c73d98bb051dfcef22adb3d5a1998c84d02c9910e9bc1";
  };

  buildInputs = [ rosbag can-msgs roscpp std-msgs roslib ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rosbag can-msgs roscpp std-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus introspection'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
