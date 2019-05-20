
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, netcdf, rtt, readline, catkin, ncurses, cmake, log4cpp, lua }:
buildRosPackage {
  pname = "ros-kinetic-ocl";
  version = "2.9.1-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/ocl-release/archive/release/kinetic/ocl/2.9.1-1.tar.gz;
    sha256 = "f834d79be1e506bdd94b2b0670dd47c766c81a8177549a0ebe4c7f69a0f7bd93";
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
