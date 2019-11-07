
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, gps-common, rostest, nav-msgs, rospy, std-msgs, roslaunch, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-oxford-gps-eth";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/oxford_gps_eth-release/archive/release/melodic/oxford_gps_eth/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "bcd0dd5be46ee6f14125e36fb76cd6eb1e951d97fab3d1917243609fcf3b8eda";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs roscpp gps-common nav-msgs rospy std-msgs tf geometry-msgs ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ sensor-msgs roscpp gps-common nav-msgs rospy std-msgs roslaunch tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ethernet interface to OxTS GPS receivers (NCOM packet structure)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
