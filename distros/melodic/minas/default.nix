
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-manager, minas-control, tra1-bringup, tra1-description, tra1-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-minas";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/minas-release/archive/release/melodic/minas/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "38395a2295e45d5de7557d8fbaf43d8d8f932f18f423d66c97a21988d9a1297b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ethercat-manager minas-control tra1-bringup tra1-description tra1-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for minas for PANASONIC MINAS EtherCAT Motor Driver Control System'';
    license = with lib.licenses; [ "GPL-2.0-only" bsdOriginal "CC-BY-SA" ];
  };
}
