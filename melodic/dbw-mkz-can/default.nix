
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, dataspeed-ulc-can, std-msgs, dbw-mkz-description, catkin, dbw-mkz-msgs, dataspeed-can-usb, nodelet, roscpp, can-msgs, rospy, roslaunch, dataspeed-can-msg-filters }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-can";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_can/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "c9bfcc4af61c81906db7436009f9620e4db8e92397e964c85f99cfd00519ec24";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs dbw-mkz-msgs nodelet roscpp can-msgs rospy dataspeed-can-msg-filters ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs dataspeed-ulc-can std-msgs dbw-mkz-description dbw-mkz-msgs dataspeed-can-usb nodelet roscpp can-msgs rospy roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
