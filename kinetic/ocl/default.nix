
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, netcdf, rtt, readline, catkin, ncurses, cmake, log4cpp, lua }:
buildRosPackage {
  pname = "ros-kinetic-ocl";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/ocl-release/archive/release/kinetic/ocl/2.9.0-1.tar.gz;
    sha256 = "117ba27fda71b1f601c74b7d8f315b10d831230bfdb2b3fe9fc76a90116f1c00";
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
