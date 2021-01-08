
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bin-pose-emulator, bin-pose-msgs, catkin }:
buildRosPackage {
  pname = "ros-kinetic-binpicking-utils";
  version = "0.1.4";

  src = fetchurl {
    url = "https://github.com/durovsky/binpicking_utils-release/archive/release/kinetic/binpicking_utils/0.1.4-0.tar.gz";
    name = "0.1.4-0.tar.gz";
    sha256 = "071610a5af5c02f6880d49c4af301c3d7e80557d7b41eaec8742f7d24aa659fe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bin-pose-emulator bin-pose-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Binpicking utils metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
