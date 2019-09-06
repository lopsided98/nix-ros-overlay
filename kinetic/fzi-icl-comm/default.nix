
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, fzi-icl-core, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-fzi-icl-comm";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/fzi_icl_comm-release/archive/release/kinetic/fzi_icl_comm/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "79edb6c68c49cf7d30ce867155632c236cc1e7e978a9cafd91e96d2784652a21";
  };

  buildType = "cmake";
  buildInputs = [ roscpp fzi-icl-core ];
  propagatedBuildInputs = [ roscpp fzi-icl-core ];
  nativeBuildInputs = [ cmake catkin ];

  meta = {
    description = ''The fzi_icl_comm package'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
