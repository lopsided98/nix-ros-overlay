
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, dbw-fca-msgs, geometry-msgs, dataspeed-ulc-can, dbw-fca-description, std-msgs, catkin, dataspeed-can-usb, nodelet, roscpp, can-msgs, rospy, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-can";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_can/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "af20f55d7125879bc0b6728be7a12e1c0927d91c947d3722d2753b526201915d";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs dbw-fca-msgs geometry-msgs std-msgs nodelet roscpp can-msgs rospy ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ sensor-msgs dbw-fca-msgs geometry-msgs dataspeed-ulc-can dbw-fca-description std-msgs dataspeed-can-usb nodelet roscpp can-msgs rospy roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
