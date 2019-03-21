
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, poco, cmake-modules, sensor-msgs, catkin, message-generation, message-runtime, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ntpd-driver";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/vooon/ntpd_driver-release/archive/release/kinetic/ntpd_driver/1.2.0-0.tar.gz;
    sha256 = "11b33d8f2d54be860f745d74c33076899015bd4a36769b2fbe1a1986baf59c93";
  };

  propagatedBuildInputs = [ poco message-generation cmake-modules message-runtime sensor-msgs roscpp ];
  nativeBuildInputs = [ poco message-generation catkin cmake-modules message-runtime sensor-msgs roscpp ];

  meta = {
    description = ''ntpd_driver sends TimeReference message time to ntpd server'';
    #license = lib.licenses.BSD;
  };
}
