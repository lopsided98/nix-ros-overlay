
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip, pyros-config, pyzmp }:
buildRosPackage {
  pname = "ros-kinetic-pyros-common";
  version = "0.5.4";

  src = fetchurl {
    url = "https://github.com/asmodehn/pyros-common-rosrelease/archive/release/kinetic/pyros_common/0.5.4-0.tar.gz";
    name = "0.5.4-0.tar.gz";
    sha256 = "c736a25ab293df88cb7fa767c5a81fcfa46dd51def3828b6ea6b40fa2dde7371";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip ];
  propagatedBuildInputs = [ pyros-config pyzmp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common interfaces packages for Pyros framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
