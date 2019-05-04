
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, neonavigation-common, topic-tools, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-joystick-interrupt";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/joystick_interrupt/0.3.1-0.tar.gz;
    sha256 = "766f87e627921c632b905d8204f6ca8ad5c95e17ed2804e5366fe61501f8c81f";
  };

  buildInputs = [ sensor-msgs neonavigation-common topic-tools roscpp geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ sensor-msgs neonavigation-common topic-tools roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interrupt cmd_vel by joystick input'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
