
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-mkz-msgs, sensor-msgs, can-msgs, catkin, dbw-mkz-description, dataspeed-can-msg-filters, roscpp, dataspeed-can-usb, dataspeed-ulc-can, rospy, std-msgs, roslaunch, nodelet, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-can";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_can/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "c9bfcc4af61c81906db7436009f9620e4db8e92397e964c85f99cfd00519ec24";
  };

  buildType = "catkin";
  buildInputs = [ dbw-mkz-msgs sensor-msgs can-msgs dataspeed-can-msg-filters roscpp rospy std-msgs nodelet geometry-msgs ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dbw-mkz-msgs sensor-msgs can-msgs dbw-mkz-description roscpp dataspeed-can-usb dataspeed-ulc-can rospy std-msgs roslaunch nodelet geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
