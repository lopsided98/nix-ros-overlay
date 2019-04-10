
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, poco, cmake-modules, sensor-msgs, catkin, message-generation, message-runtime, roscpp }:
buildRosPackage {
  pname = "ros-lunar-ntpd-driver";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/vooon/ntpd_driver-release/archive/release/lunar/ntpd_driver/1.2.0-0.tar.gz;
    sha256 = "13fbef48869d39a1a1622e9bca602803959a148b4fe1f6be90fc1fc00ad04fc8";
  };

  buildInputs = [ poco message-generation cmake-modules message-runtime sensor-msgs roscpp ];
  propagatedBuildInputs = [ poco message-generation cmake-modules message-runtime sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ntpd_driver sends TimeReference message time to ntpd server'';
    #license = lib.licenses.BSD;
  };
}
