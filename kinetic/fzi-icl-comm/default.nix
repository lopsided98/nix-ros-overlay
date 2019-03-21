
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, catkin, fzi-icl-core, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-fzi-icl-comm";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/fzi-forschungszentrum-informatik/fzi_icl_comm-release/archive/release/kinetic/fzi_icl_comm/0.0.2-0.tar.gz;
    sha256 = "79edb6c68c49cf7d30ce867155632c236cc1e7e978a9cafd91e96d2784652a21";
  };

  propagatedBuildInputs = [ roscpp fzi-icl-core ];
  nativeBuildInputs = [ cmake catkin roscpp fzi-icl-core ];

  meta = {
    description = ''The fzi_icl_comm package'';
    #license = lib.licenses.LGPLv3;
  };
}
