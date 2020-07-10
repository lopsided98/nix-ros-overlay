
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gps-common, nav-msgs, pythonPackages, roscpp, roslaunch, rospy, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-oxford-gps-eth";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/oxford_gps_eth-release/archive/release/kinetic/oxford_gps_eth/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "76b70486cb6c3360da88e2b8e059f376dc4fa01d1d20aec239a99b192df1a3f0";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ geometry-msgs gps-common nav-msgs roscpp roslaunch rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Ethernet interface to OxTS GPS receivers (NCOM packet structure)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
