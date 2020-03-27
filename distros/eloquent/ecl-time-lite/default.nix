
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-eloquent-ecl-time-lite";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_time_lite/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "9b3fcd98172d2a441d616983a19a1d6d46d373cc59d5a7ad8c8c60113b7c3c2b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Provides a portable set of time functions that are especially useful for
     porting other code or being wrapped by higher level c++ classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
