
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rqt-reconfigure, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-sick-safetyscanners";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/SICKAG/sick_safetyscanners-release/archive/release/kinetic/sick_safetyscanners/1.0.2-0.tar.gz;
    sha256 = "15c08cd9d706ea5c1730737c4399f4c6e1ee922a979383da21c0cc5c1d34848f";
  };

  buildInputs = [ message-generation dynamic-reconfigure std-msgs sensor-msgs roscpp ];
  propagatedBuildInputs = [ message-runtime dynamic-reconfigure std-msgs sensor-msgs roscpp rqt-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    #license = lib.licenses.ALv2;
  };
}
