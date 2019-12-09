
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, std-msgs, tf, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-fiducial-msgs";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/fiducial_msgs/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "dcc8489d797f57889e0be0852bbb649d44fb6114492b8822b8b5ab9969dc993c";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs tf message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs tf message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing message definitions for fiducials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
