
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, std-msgs, roslaunch, tf, catkin, roscpp, rospy, gps-common, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-melodic-oxford-gps-eth";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/oxford_gps_eth-release/archive/release/melodic/oxford_gps_eth/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "bcd0dd5be46ee6f14125e36fb76cd6eb1e951d97fab3d1917243609fcf3b8eda";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs tf roscpp rospy gps-common nav-msgs ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs roslaunch tf roscpp rospy gps-common nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ethernet interface to OxTS GPS receivers (NCOM packet structure)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
