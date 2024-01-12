
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ubnt-airos-tools";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/peci1/ubnt_airos_tools-release/archive/release/noetic/ubnt_airos_tools/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "0d3c3165ab336d758910fe23f2f9706b8069bbfb00ec7ed9d1e068f3cd0929b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime python3Packages.requests rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ubiquiti AirOS tools for extracting AP information to ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
