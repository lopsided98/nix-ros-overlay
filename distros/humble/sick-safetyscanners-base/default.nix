
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-humble-sick-safetyscanners-base";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners_base-release/archive/release/humble/sick_safetyscanners_base/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "9470d7505f7281529bd40f043db4803217bda566105f7dcc53b6a13b3cdaec9c";
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
