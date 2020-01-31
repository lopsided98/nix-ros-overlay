
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, lusb, nodelet, roscpp, roslaunch, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-usb";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_usb/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "84de61b0d7e1579d062b53a275b6a0082e991245208db0f5791e50cf59c0ae3c";
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
