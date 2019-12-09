
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, sensor-msgs, dbw-fca-msgs, std-msgs, catkin, roslib, roscpp, roslaunch, dbw-fca-can }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-joystick-demo";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_joystick_demo/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "0e76c63bbc9bde6a5d6348a3f0656001284ba66c589e6df91211bc9365f3f5c7";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs dbw-fca-msgs roscpp ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ joy sensor-msgs dbw-fca-msgs std-msgs roscpp roslaunch dbw-fca-can ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
