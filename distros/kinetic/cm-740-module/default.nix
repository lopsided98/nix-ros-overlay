
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, dynamixel-sdk, eigen, robotis-controller-msgs, robotis-device, robotis-framework-common, robotis-math, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cm-740-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/cm_740_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "f5378955bc1b88df9084fd15982bbf7148a73b1f333c5bd5d7c4f015797f0215";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules dynamixel-sdk eigen robotis-controller-msgs robotis-device robotis-framework-common robotis-math roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cm_740_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
