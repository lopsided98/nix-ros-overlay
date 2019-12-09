
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, sensor-msgs, std-msgs, catkin, roslib, dbw-mkz-can, dbw-mkz-msgs, roscpp, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-joystick-demo";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_joystick_demo/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "b758a37133992a0725348cc96d5abe0d462f7083892bed279a18d8751bcccf02";
  };

  buildType = "catkin";
  buildInputs = [ dbw-mkz-msgs std-msgs sensor-msgs roscpp ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ joy sensor-msgs std-msgs dbw-mkz-can dbw-mkz-msgs roscpp roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
