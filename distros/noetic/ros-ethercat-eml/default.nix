
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-ros-ethercat-eml";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/shadow-robot/ros_ethercat_eml-release/archive/release/noetic/ros_ethercat_eml/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "82e7e9d697778090cfb63e386c64b3877dd085382dd55b3b05fa3eb48399495f";
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
