
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fzi-icl-core, catkin, tinyxml, wget, linuxHeaders, cmake, libpcan, popt }:
buildRosPackage {
  pname = "ros-kinetic-fzi-icl-can";
  version = "1.0.11";

  src = fetchurl {
    url = https://github.com/fzi-forschungszentrum-informatik/fzi_icl_can-release/archive/release/kinetic/fzi_icl_can/1.0.11-0.tar.gz;
    sha256 = "20d111da9da0ed8bed825a559b452a15a147ecef9fc113b213125cfcd039840a";
  };

  buildInputs = [ fzi-icl-core tinyxml wget libpcan popt ];
  propagatedBuildInputs = [ fzi-icl-core catkin tinyxml linuxHeaders libpcan popt ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The fzi_icl_can package'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
