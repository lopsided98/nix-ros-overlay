
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sick-safetyscanners";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners-release/archive/release/kinetic/sick_safetyscanners/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "a10d4b785a3bca2c0b3f0830a419fc1abc77fa0c0279f820fa693871bb345816";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure message-runtime roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
