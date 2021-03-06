
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-ortho-projector, laser-scan-matcher, laser-scan-sparsifier, laser-scan-splitter, ncd-parser, polar-scan-matcher, scan-to-cloud-converter }:
buildRosPackage {
  pname = "ros-noetic-scan-tools";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/scan_tools/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "31cb07d1a7024f28b127689d2c323ff38b1293cc629dab21f068d706424e3bfa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-ortho-projector laser-scan-matcher laser-scan-sparsifier laser-scan-splitter ncd-parser polar-scan-matcher scan-to-cloud-converter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Laser scan processing tools.'';
    license = with lib.licenses; [ bsdOriginal lgpl2 ];
  };
}
