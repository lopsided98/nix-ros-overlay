
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, roscpp, sensor-msgs, sick-safevisionary-base, sick-safevisionary-msgs }:
buildRosPackage {
  pname = "ros-noetic-sick-safevisionary-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safevisionary_ros1-release/archive/release/noetic/sick_safevisionary_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "45941b34797628cc27c9a7a2a4a2d9532fd1f20646139e232dfa4cc0b81494af";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-transport roscpp sensor-msgs sick-safevisionary-base sick-safevisionary-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an interface to read the sensor output of a SICK Safevisionary sensor in ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
