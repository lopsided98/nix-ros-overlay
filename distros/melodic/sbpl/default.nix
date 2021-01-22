
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-sbpl";
  version = "1.3.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/sbpl-release/archive/release/melodic/sbpl/1.3.1-0.tar.gz";
    name = "1.3.1-0.tar.gz";
    sha256 = "9f24887428cc4e548e8cb297b225d952a1085e3c1f555a847350016c21c7cef2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Search-based planning library (SBPL).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
