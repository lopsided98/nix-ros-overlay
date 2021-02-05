
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-joystick-interrupt";
  version = "0.10.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/joystick_interrupt/0.10.6-1.tar.gz";
    name = "0.10.6-1.tar.gz";
    sha256 = "7b455bcdfe44f6abd5a877a65b3e8ac0fce914142635762e4ad9eb0e00939014";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ geometry-msgs neonavigation-common roscpp sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interrupt cmd_vel by joystick input'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
