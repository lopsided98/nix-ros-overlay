
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, serial }:
buildRosPackage {
  pname = "ros-kinetic-serial-utils";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/wjwwood/serial_utils-release/archive/release/kinetic/serial_utils/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "907e265f1c308e7fa0c6c70405ec9b279af540a0213a64707302019845d85256";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package which adds useful additions to the serial package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
