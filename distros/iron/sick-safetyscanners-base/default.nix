
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-iron-sick-safetyscanners-base";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners_base-release/archive/release/iron/sick_safetyscanners_base/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "5eff865176382d2fc626094504997c9d44439840df5402c9ed8098594e075859";
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
