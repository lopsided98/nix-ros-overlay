
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, naoqi-dcm-driver, pepper-control, rospy }:
buildRosPackage {
  pname = "ros-kinetic-pepper-dcm-bringup";
  version = "0.0.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_dcm_robot-release/archive/release/kinetic/pepper_dcm_bringup/0.0.5-0.tar.gz";
    name = "0.0.5-0.tar.gz";
    sha256 = "07a0dc005b65e85859acfb9f530b43f1d3fe082524e942f4739840133b80170f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ naoqi-dcm-driver pepper-control rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bring-up the dcm driver to control Pepper'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
