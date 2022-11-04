
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ros-ethercat-eml";
  version = "0.3.2-r5";

  src = fetchurl {
    url = "https://github.com/shadow-robot/ros_ethercat_eml-release/archive/release/melodic/ros_ethercat_eml/0.3.2-5.tar.gz";
    name = "0.3.2-5.tar.gz";
    sha256 = "8c65cc97f3af73cbf143fce894efe44f3206f68a7bf93393c9db04e214d86fd2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is an implementation of the EtherCAT master protocol for use wiht ros_ethercar package
      based on the work done at Flanders' Mechatronics Technology Centre and Willow Garage.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
