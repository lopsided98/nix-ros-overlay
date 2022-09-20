
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-galactic-sick-safetyscanners-base";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners_base-release/archive/release/galactic/sick_safetyscanners_base/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "cb34ad712a00f433ad3307ea7c1cc09621a41501fd99f6ee89b042809edda8d3";
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
