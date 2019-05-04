
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, gazebo-ros, catkin, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rh-p12-rn-gazebo";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/rh_p12_rn_gazebo/0.1.0-0.tar.gz;
    sha256 = "fbd23391f70b14845c239ccea096c10cc4af66e990f46bb83d0139663640f4b1";
  };

  buildInputs = [ std-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs roscpp controller-manager gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides basic message pub and launch file to use RH-P12-RN on Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
