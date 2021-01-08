
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rh-p12-rn-base-module, rh-p12-rn-base-module-msgs, rh-p12-rn-description, rh-p12-rn-gazebo, rh-p12-rn-gui, rh-p12-rn-manager }:
buildRosPackage {
  pname = "ros-kinetic-rh-p12-rn";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/rh_p12_rn/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "4ef2abc3c89fe45c21c13a400367baa1ec48c61ce6cc1c1ab1b196f6fd14fe05";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rh-p12-rn-base-module rh-p12-rn-base-module-msgs rh-p12-rn-description rh-p12-rn-gazebo rh-p12-rn-gui rh-p12-rn-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages packages for the ROBOTIS RH-P12-RN (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
