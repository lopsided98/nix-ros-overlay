
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-foxy-sick-safetyscanners-base";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners_base-release/archive/release/foxy/sick_safetyscanners_base/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "d6a64e72be2befd145be5f65480845a715a384fb39d2a85f9a996d584a1f3768";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
