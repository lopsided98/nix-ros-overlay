
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-joystick-interrupt";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/joystick_interrupt/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "2cba0b4614744c7f28156ecd2b659269d580088ff5d3b06790203e6c98607d72";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ geometry-msgs neonavigation-common roscpp sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interrupt cmd_vel by joystick input'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
