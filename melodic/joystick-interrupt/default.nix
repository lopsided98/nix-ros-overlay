
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, neonavigation-common, topic-tools, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-joystick-interrupt";
  version = "0.4.2-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/melodic/joystick_interrupt/0.4.2-1.tar.gz;
    sha256 = "0bbaa6c21924fa160e9e6d11087ec8ee13db29bf05fe9d6b87a1db6ccc82f126";
  };

  buildInputs = [ sensor-msgs neonavigation-common topic-tools roscpp geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ sensor-msgs neonavigation-common topic-tools roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interrupt cmd_vel by joystick input'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
