
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, log4cpp, lua, ncurses, netcdf, readline, rtt }:
buildRosPackage {
  pname = "ros-kinetic-ocl";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/ocl-release/archive/release/kinetic/ocl/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "0dd28beff7593cc5e272f442bde9951a50d6b1ebccd9d576b94e91d6154ae53a";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin log4cpp lua ncurses netcdf readline rtt ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Orocos component library
    This package contains standard components for the Orocos Toolchain'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
