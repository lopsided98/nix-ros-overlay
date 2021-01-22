
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-exotica-val-description";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/wxmerkt/exotica_val_description-release/archive/release/kinetic/exotica_val_description/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "79481b6ebf60ec933867e72d9ffab5f1f2e8e347d5971b309b694e3c13d601e9";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''val_description version including our updated meshes for unit testing and visualisation. Based on the OpenHumanoids fork of the val_description package by NASA JSC. The most current version of the original package can be found at http://gitlab.com/nasa-jsc-robotics/val_description'';
    license = with lib.licenses; [ "NASA-1.3" ];
  };
}
