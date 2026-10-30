
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-humble-sick-safetyscanners-base";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners_base-release/archive/release/humble/sick_safetyscanners_base/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "bd83ead779ecb51bd8da6d82f46c34fa4f2d5be88fc9693f91d6025d24c3bb7d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Provides an Interface to read the sensor output of a SICK
  Safety Scanner";
    license = with lib.licenses; [ asl20 ];
  };
}
