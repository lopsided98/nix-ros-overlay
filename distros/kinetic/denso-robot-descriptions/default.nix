
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-denso-robot-descriptions";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/denso_robot_descriptions/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "f8eaf62f27b6321324995ed2c0f9f0bab63a3b06af2bf9cac7624361b63e0fd5";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot descriptions package includes URDF files for DENSO robots.'';
    license = with lib.licenses; [ mit ];
  };
}
