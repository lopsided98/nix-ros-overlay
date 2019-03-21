
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-sdk, boost, cmake-modules, rh-p12-rn-base-module-msgs, catkin, robotis-controller, roscpp, std-msgs, robotis-device, robotis-controller-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-rh-p12-rn-base-module";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/rh_p12_rn_base_module/0.1.0-0.tar.gz;
    sha256 = "cdfe53d432c37dc07800ecb0f0cbd3255b01055aec76fa9f90d6c37eea4c7f3e";
  };

  propagatedBuildInputs = [ dynamixel-sdk boost cmake-modules rh-p12-rn-base-module-msgs robotis-controller roscpp std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  nativeBuildInputs = [ dynamixel-sdk boost cmake-modules rh-p12-rn-base-module-msgs catkin robotis-controller roscpp std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];

  meta = {
    description = ''Base module using ROBOTIS framework for RH-P12-RN'';
    #license = lib.licenses.Apache 2.0;
  };
}
