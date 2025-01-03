
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-humble-sick-safetyscanners-base";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners_base-release/archive/release/humble/sick_safetyscanners_base/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "aa98db048bc7e85a023cea53dba5ca12345db2f01285bad68016a8c1a6eee9d2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Provides an Interface to read the sensor output of a SICK
  Safety Scanner";
    license = with lib.licenses; [ "ALv2" ];
  };
}
