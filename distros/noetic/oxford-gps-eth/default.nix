
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gps-common, nav-msgs, python3Packages, roscpp, roslaunch, rospy, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-oxford-gps-eth";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/oxford_gps_eth-release/archive/release/noetic/oxford_gps_eth/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "c8b0e11dc06be0c20400031bde92ffa566bde872b1027a9430c935379f5b1cdc";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ geometry-msgs gps-common nav-msgs roscpp roslaunch rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Ethernet interface to OxTS GPS receivers (NCOM packet structure)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
