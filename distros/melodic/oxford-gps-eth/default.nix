
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gps-common, nav-msgs, pythonPackages, roscpp, roslaunch, rospy, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-oxford-gps-eth";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/oxford_gps_eth-release/archive/release/melodic/oxford_gps_eth/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "a547714565ca32151d3952e87eb39f6a0f5c6a241d926d4d053702c4c54de2ad";
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
