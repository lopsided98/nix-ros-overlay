
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ecl-errors, ecl-config, ecl-build }:
buildRosPackage {
  pname = "ros-crystal-ecl-time-lite";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/crystal/ecl_time_lite/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "0e008aa72773384f0da2906b6562477ca47abdef604076529eac6a19ca179997";
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
