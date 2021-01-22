
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ros-ethercat-eml";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/shadow-robot/ros_ethercat_eml-release/archive/release/kinetic/ros_ethercat_eml/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "5590af3202eb4798de1ed2576b0ef47dedf6b56780fecb61b82e34e93edc31bf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is an implementation of the EtherCAT master protocol for use wiht ros_ethercar package
      based on the work done at Flanders' Mechatronics Technology Centre and Willow Garage.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
