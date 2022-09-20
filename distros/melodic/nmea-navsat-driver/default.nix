
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nmea-msgs, pythonPackages, roslint, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-nmea-navsat-driver";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/nmea_navsat_driver-release/archive/release/melodic/nmea_navsat_driver/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "4bb6d7fbaf5d6d3d334c0ce1b21997c6c303d10ded2bb87c72b9dd609fbc18ba";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs nmea-msgs pythonPackages.pyserial rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to parse NMEA strings and publish a very simple GPS message. Does not
    require or use the GPSD deamon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
