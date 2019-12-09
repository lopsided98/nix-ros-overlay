
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, sensor-msgs, boost, std-msgs, robotis-math, cmake-modules, robotis-device, catkin, eigen, robotis-framework-common, roscpp, dynamixel-sdk }:
buildRosPackage {
  pname = "ros-kinetic-cm-740-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/cm_740_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "f5378955bc1b88df9084fd15982bbf7148a73b1f333c5bd5d7c4f015797f0215";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost sensor-msgs std-msgs cmake-modules robotis-device dynamixel-sdk eigen robotis-framework-common roscpp robotis-math ];
  propagatedBuildInputs = [ robotis-controller-msgs sensor-msgs boost std-msgs cmake-modules robotis-device dynamixel-sdk eigen robotis-framework-common roscpp robotis-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cm_740_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
