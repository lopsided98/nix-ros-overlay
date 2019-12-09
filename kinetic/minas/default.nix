
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tra1-bringup, tra1-description, ethercat-manager, catkin, tra1-moveit-config, minas-control }:
buildRosPackage {
  pname = "ros-kinetic-minas";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/tork-a/minas-release/archive/release/kinetic/minas/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "1a5f0c022a514fe533ef46f284a56463d0db3396c5cbc57a7f9d8d433b641b2d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ tra1-bringup tra1-description ethercat-manager tra1-moveit-config minas-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for minas for PANASONIC MINAS EtherCAT Motor Driver Control System'';
    license = with lib.licenses; [ gpl2 bsdOriginal "CC-BY-SA" ];
  };
}
