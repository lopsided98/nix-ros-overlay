
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, roscpp, rqt-reconfigure, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-sick-safetyscanners";
  version = "1.0.5-r2";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners-release/archive/release/noetic/sick_safetyscanners/1.0.5-2.tar.gz";
    name = "1.0.5-2.tar.gz";
    sha256 = "a5e6f363233d779c720ffd27e83018044a003e4bbb2f91186be77b2ceea1e4b7";
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
