
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rqt-reconfigure, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-sick-safetyscanners";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/SICKAG/sick_safetyscanners-release/archive/release/melodic/sick_safetyscanners/1.0.2-0.tar.gz;
    sha256 = "1704147cac2d6645162141e5474d67d5a3e63e1a52b2ac98e321b922fc5f3bbd";
  };

  propagatedBuildInputs = [ message-runtime dynamic-reconfigure std-msgs sensor-msgs roscpp rqt-reconfigure ];
  nativeBuildInputs = [ message-generation catkin dynamic-reconfigure std-msgs sensor-msgs roscpp ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    #license = lib.licenses.ALv2;
  };
}
