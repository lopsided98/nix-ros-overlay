
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, neonavigation-common, topic-tools, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-joystick-interrupt";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/joystick_interrupt/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "684bf1d56a69668ad3f60be796d16d0859b569c4bf7fa60084fcad89cd3db8f8";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs neonavigation-common topic-tools roscpp geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ sensor-msgs neonavigation-common topic-tools roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interrupt cmd_vel by joystick input'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
