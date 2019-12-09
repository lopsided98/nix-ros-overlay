
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-ecl-build";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/eloquent/ecl_build/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "3be8c10f49eb2a8b8f78f504513af686d939a7fff6def699ebaeac3fc2ac030c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Collection of cmake/make build tools primarily for ecl development itself, but also
     contains a few cmake modules useful outside of the ecl.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
