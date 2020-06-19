
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, roscpp, rqt-reconfigure, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sick-safetyscanners";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners-release/archive/release/kinetic/sick_safetyscanners/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "952ab90782dfa2e20d0d05358d34b906002c4826989d19c1b6f4b7b57ebc35e9";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure message-runtime roscpp rqt-reconfigure sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
