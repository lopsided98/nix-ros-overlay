
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, fzi-icl-core, libpcan, linuxHeaders, popt, tinyxml, wget }:
buildRosPackage {
  pname = "ros-kinetic-fzi-icl-can";
  version = "1.0.11";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/fzi_icl_can-release/archive/release/kinetic/fzi_icl_can/1.0.11-0.tar.gz";
    name = "1.0.11-0.tar.gz";
    sha256 = "20d111da9da0ed8bed825a559b452a15a147ecef9fc113b213125cfcd039840a";
  };

  buildType = "cmake";
  buildInputs = [ wget ];
  propagatedBuildInputs = [ catkin fzi-icl-core libpcan linuxHeaders popt tinyxml ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The fzi_icl_can package'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
