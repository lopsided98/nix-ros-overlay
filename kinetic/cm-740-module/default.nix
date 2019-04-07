
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-sdk, boost, cmake-modules, sensor-msgs, catkin, roscpp, robotis-math, eigen, std-msgs, robotis-device, robotis-controller-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-cm-740-module";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/cm_740_module/0.2.1-0.tar.gz;
    sha256 = "f5378955bc1b88df9084fd15982bbf7148a73b1f333c5bd5d7c4f015797f0215";
  };

  buildInputs = [ dynamixel-sdk boost cmake-modules sensor-msgs roscpp robotis-math eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  propagatedBuildInputs = [ dynamixel-sdk boost cmake-modules sensor-msgs roscpp robotis-math eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cm_740_module package'';
    #license = lib.licenses.Apache 2.0;
  };
}
