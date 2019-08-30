
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-fca-msgs, sensor-msgs, joy, catkin, roslib, dbw-fca-can, std-msgs, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-joystick-demo";
  version = "1.0.6-r1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_joystick_demo/1.0.6-1.tar.gz;
    sha256 = "0e76c63bbc9bde6a5d6348a3f0656001284ba66c589e6df91211bc9365f3f5c7";
  };

  buildInputs = [ std-msgs sensor-msgs roscpp dbw-fca-msgs ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ dbw-fca-msgs sensor-msgs joy dbw-fca-can std-msgs roslaunch roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
