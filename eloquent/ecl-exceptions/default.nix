
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-eloquent-ecl-exceptions";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_exceptions/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "ba32d707e2fe52162c9342bb4bde49911550f76beda6697805b12774daa0acd9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Template based exceptions - these are simple and practical
     and avoid the proliferation of exception types. Although not
     syntatactically ideal, it is convenient and eminently practical.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
