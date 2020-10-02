
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nmea-msgs, python3Packages, roslint, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-nmea-navsat-driver";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/nmea_navsat_driver-release/archive/release/noetic/nmea_navsat_driver/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "0f4ef3f997e211bffea6fea1b430e236039d4d42e20e75982171fd53583860ab";
  };

  buildType = "catkin";
  buildInputs = [ python3Packages.catkin-pkg ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs nmea-msgs python3Packages.pyserial rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to parse NMEA strings and publish a very simple GPS message. Does not
    require or use the GPSD deamon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
