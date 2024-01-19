
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-iron-sick-safetyscanners-base";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners_base-release/archive/release/iron/sick_safetyscanners_base/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "d1483b618ec1cfacb14af9ac89d5c50b0d0aa9da72420359da7b8581b2b1cb13";
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
