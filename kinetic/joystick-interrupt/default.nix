
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, neonavigation-common, topic-tools, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-joystick-interrupt";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/joystick_interrupt/0.4.0-1.tar.gz;
    sha256 = "c63009f410e0743b4fd1d691f0b36be63880c634cf73205f6f94cd5d674c48f8";
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
