
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-converters, ecl-errors, ecl-exceptions, ecl-formatters, ecl-license, ecl-mpl, ecl-type-traits, ecl-utilities }:
buildRosPackage {
  pname = "ros-noetic-ecl-containers";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_containers/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "35524cfb59473cbf2e63c1899780fe96014925ddc96b8f6c02d390b91c4a4d26";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-converters ecl-errors ecl-exceptions ecl-formatters ecl-license ecl-mpl ecl-type-traits ecl-utilities ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The containers included here are intended to extend the stl containers.
    In all cases, these implementations are designed to implement
    c++ conveniences and safety where speed is not sacrificed. 

    Also includes techniques for memory debugging of common problems such
    as buffer overruns.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
