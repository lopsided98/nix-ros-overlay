
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-exotica-val-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/wxmerkt/exotica_val_description-release/archive/release/noetic/exotica_val_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "bef122656f23a0a64ed34867b445ee7e3ce6cbfec5bec7472fd8823bf8f08a73";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''val_description version including our updated meshes for unit testing and visualisation. Based on the OpenHumanoids fork of the val_description package by NASA JSC. The most current version of the original package can be found at http://gitlab.com/nasa-jsc-robotics/val_description'';
    license = with lib.licenses; [ "NASA-1.3" ];
  };
}
