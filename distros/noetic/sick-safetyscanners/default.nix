
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-sick-safetyscanners";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners-release/archive/release/noetic/sick_safetyscanners/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "df3f4bb715a9a522000f0d6a238afddd63781cae0d8046319ecc5c2b170d2ef0";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure message-runtime roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
