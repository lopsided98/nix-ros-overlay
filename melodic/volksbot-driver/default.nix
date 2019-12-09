
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, tf, catkin, epos2-motor-controller, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-volksbot-driver";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/uos-gbp/volksbot_driver-release/archive/release/melodic/volksbot_driver/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "a46e4b3d0321766d6cae107019a7d3aecfd3babf0e4b767c316e489e45ae2cef";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs tf epos2-motor-controller roscpp nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs tf epos2-motor-controller roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Volksbot robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
