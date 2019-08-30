
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-fca-msgs, sensor-msgs, can-msgs, catkin, roscpp, dataspeed-can-usb, dataspeed-ulc-can, nodelet, rospy, std-msgs, roslaunch, dbw-fca-description, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-can";
  version = "1.0.6-r1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_can/1.0.6-1.tar.gz;
    sha256 = "af20f55d7125879bc0b6728be7a12e1c0927d91c947d3722d2753b526201915d";
  };

  buildInputs = [ dbw-fca-msgs sensor-msgs can-msgs roscpp rospy std-msgs nodelet geometry-msgs ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dbw-fca-msgs sensor-msgs can-msgs roscpp dataspeed-can-usb dataspeed-ulc-can nodelet rospy std-msgs roslaunch dbw-fca-description geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
