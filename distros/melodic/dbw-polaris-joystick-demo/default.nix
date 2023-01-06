
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-polaris-can, dbw-polaris-msgs, joy, roscpp, roslaunch, roslib, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-polaris-joystick-demo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/melodic/dbw_polaris_joystick_demo/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5e6b31cb0ca08399c7f80acb0d147799f32e910831799c0d4a9390c72f435151";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ dbw-polaris-can dbw-polaris-msgs joy roscpp roslaunch sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
