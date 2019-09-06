
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-mkz-msgs, sensor-msgs, catkin, joy, roslib, dbw-mkz-can, std-msgs, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dbw-mkz-joystick-demo";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/kinetic/dbw_mkz_joystick_demo/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "c785c74e35df4ec5d357c6b9c8687064b249e82aca3d557e89561141e3c21d26";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs dbw-mkz-msgs roscpp ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ dbw-mkz-msgs sensor-msgs joy dbw-mkz-can std-msgs roslaunch roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
