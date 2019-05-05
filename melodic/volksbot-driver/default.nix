
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, epos2-motor-controller, roscpp, nav-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-volksbot-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/volksbot_driver-release/archive/release/melodic/volksbot_driver/1.0.0-1.tar.gz;
    sha256 = "c8cb933054437dd270a0a2171f0dc56922538911d1b32ea5dbb1cea60bd95880";
  };

  buildInputs = [ sensor-msgs epos2-motor-controller roscpp nav-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs epos2-motor-controller roscpp nav-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Volksbot robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
