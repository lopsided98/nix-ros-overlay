
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ecl-errors, ecl-config, ecl-build }:
buildRosPackage {
  pname = "ros-eloquent-ecl-time-lite";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_time_lite/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "95324e631bc37b28e8f0d3663684b5deb324a581dc99403d579ad9de73225dcb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-errors ecl-license ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-errors ecl-license ecl-config ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Provides a portable set of time functions that are especially useful for
     porting other code or being wrapped by higher level c++ classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
