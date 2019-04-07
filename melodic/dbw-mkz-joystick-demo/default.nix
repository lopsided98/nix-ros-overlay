
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-mkz-msgs, sensor-msgs, catkin, joy, roslib, dbw-mkz-can, std-msgs, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-joystick-demo";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_joystick_demo/1.1.1-0.tar.gz;
    sha256 = "ee44e5172a5ab64274e3a62accbe5ed7206cf0d5fe5163b8c24ca857e082bc2e";
  };

  buildInputs = [ std-msgs sensor-msgs dbw-mkz-msgs roscpp ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ roslaunch dbw-mkz-msgs dbw-mkz-can std-msgs sensor-msgs joy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    #license = lib.licenses.BSD;
  };
}
