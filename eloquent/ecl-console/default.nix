
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ecl-config, ecl-build, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-eloquent-ecl-console";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_console/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "e86efea4595d133eb7bbd3ffb80bc843765dbb43e9d0a15716eb9cb02882a6c5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-config ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Color codes for ansii consoles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
