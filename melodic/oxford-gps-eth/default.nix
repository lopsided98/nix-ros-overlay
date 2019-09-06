
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, gps-common, rostest, nav-msgs, roslaunch, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-oxford-gps-eth";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/oxford_gps_eth-release/archive/release/melodic/oxford_gps_eth/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "e746691aeed3c6c6613c51e9be0db75d5c0d5c2442453823a466fa15cac9ee7e";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs roscpp gps-common nav-msgs tf geometry-msgs ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ tf sensor-msgs gps-common nav-msgs roslaunch roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ethernet interface to OxTS GPS receivers (NCOM packet structure)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
