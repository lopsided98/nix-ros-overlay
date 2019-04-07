
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, tinyxml, boost }:
buildRosPackage {
  pname = "ros-kinetic-fzi-icl-core";
  version = "1.0.6";

  src = fetchurl {
    url = https://github.com/fzi-forschungszentrum-informatik/fzi_icl_core-release/archive/release/kinetic/fzi_icl_core/1.0.6-0.tar.gz;
    sha256 = "319cdebb275fded9216a64c17608ff047b021e2d68694176652d19acaa7bf70d";
  };

  buildInputs = [ tinyxml boost ];
  propagatedBuildInputs = [ catkin tinyxml boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The fzi_icl_core package'';
    #license = lib.licenses.LGPLv3;
  };
}
