
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, catkin, rosunit, roslint, neonavigation-common, roscpp, topic-tools, rostest }:
buildRosPackage {
  pname = "ros-melodic-joystick-interrupt";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/joystick_interrupt/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "325373acc8a61be22e9e2b515320e0766b4eb4051674b988ae36a34f773a421d";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs neonavigation-common roscpp topic-tools ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs neonavigation-common roscpp topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interrupt cmd_vel by joystick input'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
