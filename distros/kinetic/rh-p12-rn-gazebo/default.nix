
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rh-p12-rn-gazebo";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/rh_p12_rn_gazebo/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "fbd23391f70b14845c239ccea096c10cc4af66e990f46bb83d0139663640f4b1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides basic message pub and launch file to use RH-P12-RN on Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
