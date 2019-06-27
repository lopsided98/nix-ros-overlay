
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, netcdf, rtt, readline, catkin, ncurses, cmake, log4cpp, lua }:
buildRosPackage {
  pname = "ros-lunar-ocl";
  version = "2.9.1-r3";

  src = fetchurl {
    url = https://github.com/orocos-gbp/ocl-release/archive/release/lunar/ocl/2.9.1-3.tar.gz;
    sha256 = "e501628a2dccca1ce5b17065d058674b70a5ade2685db684d1064e50ddd32cba";
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
