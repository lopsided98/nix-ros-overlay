
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-joystick-interrupt";
  version = "0.10.8-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/joystick_interrupt/0.10.8-1.tar.gz";
    name = "0.10.8-1.tar.gz";
    sha256 = "51af8ed8041bcb65b894975bbf7164e1ca92e2d0b6368709f21b50edf90190f3";
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
