
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-foxy-sick-safetyscanners-base";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners_base-release/archive/release/foxy/sick_safetyscanners_base/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "5135b0b92898039b9f24f62c96a117cf698e65df9e81d11e151a7edea81896ef";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
