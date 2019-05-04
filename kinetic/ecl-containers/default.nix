
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, ecl-formatters, ecl-utilities, catkin, ecl-exceptions, ecl-license, ecl-errors, ecl-type-traits, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-kinetic-ecl-containers";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_containers/0.61.17-0.tar.gz;
    sha256 = "0fe9acea89bd3b876af55c8f8ff5f352cc24e0a5ce03f3aee2294a8f5a4a4728";
  };

  buildInputs = [ ecl-converters ecl-formatters ecl-utilities ecl-exceptions ecl-license ecl-errors ecl-type-traits ecl-config ecl-mpl ];
  propagatedBuildInputs = [ ecl-converters ecl-formatters ecl-utilities ecl-exceptions ecl-license ecl-errors ecl-type-traits ecl-config ecl-mpl ];
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
