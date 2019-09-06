
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-build, ecl-license, ecl-errors, ament-cmake-ros, ecl-config }:
buildRosPackage {
  pname = "ros-dashing-ecl-time-lite";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/dashing/ecl_time_lite/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "83f3edc5532b89a6b8040ad849f48b11fb2ea7c1885a07182594e7e5760b546e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-errors ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-errors ecl-config ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Provides a portable set of time functions that are especially useful for
     porting other code or being wrapped by higher level c++ classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
