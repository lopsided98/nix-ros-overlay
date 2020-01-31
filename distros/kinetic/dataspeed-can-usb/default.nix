
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, lusb, nodelet, roscpp, roslaunch, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-can-usb";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/kinetic/dataspeed_can_usb/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "81ee8019c72050458123c0491f199f42df0864668e76aa1a74733dacbd9ac647";
  };

  buildType = "catkin";
  buildInputs = [ roslib ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ can-msgs lusb nodelet roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver to interface with the Dataspeed Inc. USB CAN Tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
