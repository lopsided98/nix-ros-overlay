
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf }:
buildRosPackage {
  pname = "ros-kinetic-rs-description";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/rs_description/1.0.0-0.tar.gz;
    sha256 = "5384d54ee3c75f6db33cf01bad5951ade997a9091b1ec99c0061762a45c8ccce";
  };

  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rs_description package'';
    #license = lib.licenses.BSD;
  };
}
