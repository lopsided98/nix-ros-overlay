
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, catkin, rosunit, roslint, neonavigation-common, roscpp, topic-tools, rostest }:
buildRosPackage {
  pname = "ros-kinetic-joystick-interrupt";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/joystick_interrupt/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "684bf1d56a69668ad3f60be796d16d0859b569c4bf7fa60084fcad89cd3db8f8";
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
