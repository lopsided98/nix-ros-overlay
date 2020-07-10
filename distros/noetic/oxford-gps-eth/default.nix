
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gps-common, nav-msgs, python3Packages, roscpp, roslaunch, rospy, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-oxford-gps-eth";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/oxford_gps_eth-release/archive/release/noetic/oxford_gps_eth/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "5fe9b8de57e1db9acb31d159525360b63c417df60299228a5a765f20fc03f659";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ geometry-msgs gps-common nav-msgs roscpp roslaunch rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Ethernet interface to OxTS GPS receivers (NCOM packet structure)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
