
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-ortho-projector, laser-scan-matcher, laser-scan-sparsifier, laser-scan-splitter, ncd-parser, polar-scan-matcher, scan-to-cloud-converter }:
buildRosPackage {
  pname = "ros-melodic-scan-tools";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/melodic/scan_tools/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "b2848d7623a75866185fa47d415fbcb05bbabcfdbfc7bc11f40fdfd704c698f6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laser-ortho-projector laser-scan-matcher laser-scan-sparsifier laser-scan-splitter ncd-parser polar-scan-matcher scan-to-cloud-converter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Laser scan processing tools.'';
    license = with lib.licenses; [ bsdOriginal lgpl3Only ];
  };
}
