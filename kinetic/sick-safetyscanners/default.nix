
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rqt-reconfigure, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-sick-safetyscanners";
  version = "1.0.3-r1";

  src = fetchurl {
    url = https://github.com/SICKAG/sick_safetyscanners-release/archive/release/kinetic/sick_safetyscanners/1.0.3-1.tar.gz;
    sha256 = "6a37d396bc361e2351027762515601307b1fccb12ad3ff8b3fe0cab38edb8ac8";
  };

  buildInputs = [ sensor-msgs message-generation dynamic-reconfigure std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs rqt-reconfigure message-runtime dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
