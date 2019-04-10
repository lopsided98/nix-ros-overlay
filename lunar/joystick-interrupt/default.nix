
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, neonavigation-common, topic-tools, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-joystick-interrupt";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/lunar/joystick_interrupt/0.3.1-0.tar.gz;
    sha256 = "b7daf93a7d5658c25541f91a254237503e83d9a6ae61f3d75129e567862693bf";
  };

  buildInputs = [ neonavigation-common topic-tools sensor-msgs roscpp geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ neonavigation-common topic-tools sensor-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interrupt cmd_vel by joystick input'';
    #license = lib.licenses.BSD;
  };
}
