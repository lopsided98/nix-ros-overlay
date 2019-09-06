
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazeboSimulator, geodesy, geographic-msgs, quaternion-operation, eigen, rosdoc-lite, roscpp, nmea-msgs }:
buildRosPackage {
  pname = "ros-melodic-nmea-gps-plugin";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/nmea_gps_plugin-release/archive/release/melodic/nmea_gps_plugin/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "bf0ecd5604699384b818ed34494c93bc8faee1e3645a8e3d9bd58e4e17256f8d";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros gazeboSimulator.gazebo geographic-msgs geodesy quaternion-operation eigen roscpp nmea-msgs ];
  propagatedBuildInputs = [ gazebo-ros gazeboSimulator.gazebo geographic-msgs geodesy quaternion-operation eigen rosdoc-lite roscpp nmea-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_gps_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
