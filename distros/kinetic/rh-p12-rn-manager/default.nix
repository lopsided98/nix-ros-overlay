
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamixel-sdk, rh-p12-rn-base-module, robotis-controller, robotis-controller-msgs, robotis-device, robotis-framework-common, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rh-p12-rn-manager";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/rh_p12_rn_manager/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "2dca3d4c71024aadaa0a5ddcb1edcb45fb300a3fd91b530a9f2c40a15397f0ea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules dynamixel-sdk rh-p12-rn-base-module robotis-controller robotis-controller-msgs robotis-device robotis-framework-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Manager package using ROBOTIS framework to control the RH-P12-RN'';
    license = with lib.licenses; [ asl20 ];
  };
}
