
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nao-control, naoqi-dcm-driver, rospy }:
buildRosPackage {
  pname = "ros-kinetic-nao-dcm-bringup";
  version = "0.0.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_dcm_robot-release/archive/release/kinetic/nao_dcm_bringup/0.0.5-0.tar.gz";
    name = "0.0.5-0.tar.gz";
    sha256 = "60486e8cfdb24d49a67c53d74e174a8bd96a4ac2f4af60df8e1923130eeb5924";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nao-control naoqi-dcm-driver rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bring-up the nao_dcm driver to connect to Aldebaran's Nao robot (v4).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
