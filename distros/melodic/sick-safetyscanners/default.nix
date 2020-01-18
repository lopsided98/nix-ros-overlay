
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, roscpp, rqt-reconfigure, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-sick-safetyscanners";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners-release/archive/release/melodic/sick_safetyscanners/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "8da30184c80f0d43c3ad4657d63f3bda46087d165e8e8f6b00011be4dfe8660e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp rqt-reconfigure sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
