
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, rostest, gps-common, nav-msgs, roslaunch, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-oxford-gps-eth";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/oxford_gps_eth-release/archive/release/melodic/oxford_gps_eth/1.0.0-0.tar.gz;
    sha256 = "e746691aeed3c6c6613c51e9be0db75d5c0d5c2442453823a466fa15cac9ee7e";
  };

  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ roslaunch gps-common nav-msgs geometry-msgs sensor-msgs tf roscpp ];
  nativeBuildInputs = [ gps-common nav-msgs catkin geometry-msgs sensor-msgs tf roscpp ];

  meta = {
    description = ''Ethernet interface to OxTS GPS receivers (NCOM packet structure)'';
    #license = lib.licenses.BSD;
  };
}
