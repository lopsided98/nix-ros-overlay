
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bin-pose-msgs, catkin, bin-pose-emulator }:
buildRosPackage {
  pname = "ros-kinetic-binpicking-utils";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/durovsky/binpicking_utils-release/archive/release/kinetic/binpicking_utils/0.1.4-0.tar.gz;
    sha256 = "071610a5af5c02f6880d49c4af301c3d7e80557d7b41eaec8742f7d24aa659fe";
  };

  propagatedBuildInputs = [ bin-pose-msgs bin-pose-emulator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Binpicking utils metapackage'';
    #license = lib.licenses.BSD;
  };
}
