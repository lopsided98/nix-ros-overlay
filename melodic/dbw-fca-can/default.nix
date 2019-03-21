
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-fca-msgs, sensor-msgs, can-msgs, catkin, roscpp, dataspeed-can-usb, dataspeed-ulc-can, nodelet, rospy, std-msgs, roslaunch, dbw-fca-description, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-can";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_can/1.0.1-0.tar.gz;
    sha256 = "6551ac4ef59f8aa4a27cc762f1ba9dba24a9f61f28cf8f49b53496d95b2eee91";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dbw-fca-msgs sensor-msgs dbw-fca-description can-msgs roscpp dataspeed-can-usb dataspeed-ulc-can rospy std-msgs roslaunch nodelet geometry-msgs ];
  nativeBuildInputs = [ dbw-fca-msgs sensor-msgs can-msgs catkin roscpp rospy std-msgs nodelet geometry-msgs ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    #license = lib.licenses.BSD;
  };
}
