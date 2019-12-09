
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, boost, robotis-controller, std-msgs, cmake-modules, robotis-device, catkin, roscpp, robotis-framework-common, rh-p12-rn-base-module-msgs, dynamixel-sdk }:
buildRosPackage {
  pname = "ros-kinetic-rh-p12-rn-base-module";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/rh_p12_rn_base_module/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "cdfe53d432c37dc07800ecb0f0cbd3255b01055aec76fa9f90d6c37eea4c7f3e";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost robotis-controller std-msgs cmake-modules robotis-device roscpp robotis-framework-common rh-p12-rn-base-module-msgs dynamixel-sdk ];
  propagatedBuildInputs = [ robotis-controller robotis-controller-msgs boost rh-p12-rn-base-module-msgs std-msgs cmake-modules robotis-device robotis-framework-common roscpp dynamixel-sdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Base module using ROBOTIS framework for RH-P12-RN'';
    license = with lib.licenses; [ asl20 ];
  };
}
