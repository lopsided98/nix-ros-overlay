
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, neonavigation-common, roscpp, roslint, rostest, rosunit, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-joystick-interrupt";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/joystick_interrupt/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "68c3c2fc98797ed694dd9aebcc4e9073b5019aa693707ff92acfa0acff521ed4";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs neonavigation-common roscpp sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interrupt cmd_vel by joystick input'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
