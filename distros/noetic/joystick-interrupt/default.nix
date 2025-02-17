
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-joystick-interrupt";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/joystick_interrupt/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "887d0d7e422cb0df97163ef72989039f85c9301c8836fb59e71559151640062c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ geometry-msgs neonavigation-common roscpp sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Interrupt cmd_vel by joystick input";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
