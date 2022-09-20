
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-exotica-val-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/wxmerkt/exotica_val_description-release/archive/release/melodic/exotica_val_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9ffa2502040e704ba54e21b691521ba3e3213011535eef52b7af2a4222dcc8cd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''val_description version including our updated meshes for unit testing and visualisation. Based on the OpenHumanoids fork of the val_description package by NASA JSC. The most current version of the original package can be found at http://gitlab.com/nasa-jsc-robotics/val_description'';
    license = with lib.licenses; [ "NASA-1.3" ];
  };
}
