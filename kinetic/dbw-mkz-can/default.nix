
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-mkz-msgs, sensor-msgs, can-msgs, catkin, dbw-mkz-description, dataspeed-can-msg-filters, roscpp, dataspeed-can-usb, dataspeed-ulc-can, rospy, std-msgs, roslaunch, nodelet, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dbw-mkz-can";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/kinetic/dbw_mkz_can/1.1.1-0.tar.gz;
    sha256 = "2fe3c91fd2c69078af2b2848853107e5a227af234f65f8d5c08c567cb6c8b978";
  };

  buildInputs = [ dbw-mkz-msgs sensor-msgs can-msgs dataspeed-can-msg-filters roscpp rospy std-msgs nodelet geometry-msgs ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dbw-mkz-msgs sensor-msgs can-msgs dbw-mkz-description roscpp dataspeed-can-usb dataspeed-ulc-can rospy std-msgs roslaunch nodelet geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
