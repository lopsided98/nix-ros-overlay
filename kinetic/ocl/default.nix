
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, netcdf, rtt, readline, catkin, ncurses, cmake, log4cpp, lua }:
buildRosPackage {
  pname = "ros-kinetic-ocl";
  version = "2.9.1-r3";

  src = fetchurl {
    url = https://github.com/orocos-gbp/ocl-release/archive/release/kinetic/ocl/2.9.1-3.tar.gz;
    sha256 = "70188307f46a486f9b6bb673a194b492aab033a736a4146bca93ebd90b00ba15";
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
