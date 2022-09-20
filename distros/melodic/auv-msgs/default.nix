
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-auv-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/oceansystemslab/auv_msgs-release/archive/release/melodic/auv_msgs/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "773b034a505af916981ca2116c387d65004a1cbe4a55296cf81ac9517a75f21d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides message types commonly used with Autonomous Underwater Vehicles'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
