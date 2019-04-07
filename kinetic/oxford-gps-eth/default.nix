
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, gps-common, rostest, nav-msgs, roslaunch, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-oxford-gps-eth";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/oxford_gps_eth-release/archive/release/kinetic/oxford_gps_eth/1.0.0-0.tar.gz;
    sha256 = "2a79eaef84c7ddb88d06603b096c5e4ce11c2f1fd5ece39e607f1c12c007e743";
  };

  buildInputs = [ gps-common nav-msgs geometry-msgs sensor-msgs tf roscpp ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ roslaunch gps-common nav-msgs geometry-msgs sensor-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ethernet interface to OxTS GPS receivers (NCOM packet structure)'';
    #license = lib.licenses.BSD;
  };
}
