
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-ortho-projector, laser-scan-matcher, laser-scan-sparsifier, laser-scan-splitter, ncd-parser, polar-scan-matcher, scan-to-cloud-converter }:
buildRosPackage {
  pname = "ros-kinetic-scan-tools";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/scan_tools/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "64e88ee545cbf17c8373709ea7e8e3fa2e07034ebebd567122b34f75b318ad6f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-ortho-projector laser-scan-matcher laser-scan-sparsifier laser-scan-splitter ncd-parser polar-scan-matcher scan-to-cloud-converter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Laser scan processing tools.'';
    license = with lib.licenses; [ bsdOriginal lgpl2 ];
  };
}
