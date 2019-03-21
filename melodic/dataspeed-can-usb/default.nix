
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lusb, catkin, can-msgs, roslib, nodelet, std-msgs, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-usb";
  version = "1.0.12";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_usb/1.0.12-0.tar.gz;
    sha256 = "e664af652ae15f28732366c4ced5ee7d6cdb7e16183a5fec6d37c35856515013";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ lusb std-msgs can-msgs roslaunch nodelet roscpp ];
  nativeBuildInputs = [ roslib lusb nodelet std-msgs can-msgs catkin roscpp ];

  meta = {
    description = ''Driver to interface with the Dataspeed Inc. USB CAN Tool'';
    #license = lib.licenses.BSD;
  };
}
