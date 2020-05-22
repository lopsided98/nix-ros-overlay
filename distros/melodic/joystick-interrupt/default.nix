
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-joystick-interrupt";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/joystick_interrupt/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "7928a70e335dea79fc8ae7301e81adbe11d65977a2f8094dd93fe9cec2774b9f";
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
