
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, roslib, nodelet, roscpp, can-msgs, lusb, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-usb";
  version = "1.0.12";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_usb/1.0.12-0.tar.gz";
    name = "1.0.12-0.tar.gz";
    sha256 = "e664af652ae15f28732366c4ced5ee7d6cdb7e16183a5fec6d37c35856515013";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs roslib nodelet roscpp can-msgs lusb ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ std-msgs nodelet roscpp can-msgs lusb roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver to interface with the Dataspeed Inc. USB CAN Tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
