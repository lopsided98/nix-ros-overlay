
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, roslib, nodelet, roscpp, can-msgs, lusb, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-can-usb";
  version = "1.0.12";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/kinetic/dataspeed_can_usb/1.0.12-0.tar.gz";
    name = "1.0.12-0.tar.gz";
    sha256 = "9c831ba342b4f9354f665ee45eb62f8b067b4a5a3c77e77a9b0262ba5ee161c7";
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
