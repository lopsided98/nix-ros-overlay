
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nmea-msgs, python3Packages, roslint, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-nmea-navsat-driver";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/nmea_navsat_driver-release/archive/release/noetic/nmea_navsat_driver/0.6.1-2.tar.gz";
    name = "0.6.1-2.tar.gz";
    sha256 = "333a1a0c8f0ca93a91e6badeddc32c569ddae5f6a362679e67e0fcfb1e747d40";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.catkin-pkg ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs nmea-msgs python3Packages.pyserial rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to parse NMEA strings and publish a very simple GPS message. Does not
    require or use the GPSD deamon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
