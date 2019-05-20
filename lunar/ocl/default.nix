
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, netcdf, rtt, readline, catkin, ncurses, cmake, log4cpp, lua }:
buildRosPackage {
  pname = "ros-lunar-ocl";
  version = "2.9.1-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/ocl-release/archive/release/lunar/ocl/2.9.1-1.tar.gz;
    sha256 = "bde8d2a77c1e0be8b771c994cc5bcfed3611687307593f9aea85cc0d81010e37";
  };

  buildInputs = [ netcdf rtt readline ncurses log4cpp lua ];
  propagatedBuildInputs = [ netcdf rtt readline catkin ncurses log4cpp lua ];
  nativeBuildInputs = [ cmake catkin ];

  meta = {
    description = ''Orocos component library
    This package contains standard components for the Orocos Toolchain'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
