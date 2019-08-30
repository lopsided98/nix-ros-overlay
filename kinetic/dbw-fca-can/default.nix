
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-fca-msgs, sensor-msgs, can-msgs, catkin, roscpp, dataspeed-can-usb, dataspeed-ulc-can, nodelet, rospy, std-msgs, roslaunch, dbw-fca-description, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dbw-fca-can";
  version = "1.0.6-r1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/kinetic/dbw_fca_can/1.0.6-1.tar.gz;
    sha256 = "53bd2a513e1af517bf5c2226484896c1717304cd27d0b1e1ee031e1b3ed72eb0";
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
