
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, neonavigation-common, topic-tools, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-joystick-interrupt";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/joystick_interrupt/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "4430c2d85e2ae1b5d635d736d3c722aff678a3a2e62e190ce07901f3f151c512";
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
