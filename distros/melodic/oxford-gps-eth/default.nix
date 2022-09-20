
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gps-common, nav-msgs, pythonPackages, roscpp, roslaunch, rospy, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-oxford-gps-eth";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/oxford_gps_eth-release/archive/release/melodic/oxford_gps_eth/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "01a2698e411ac5f0920817701cecbb4916a5c8b1dc89d8ef561befcb59f1c3cb";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ geometry-msgs gps-common nav-msgs roscpp roslaunch rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Ethernet interface to OxTS GPS receivers (NCOM packet structure)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
