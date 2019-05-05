
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, ecl-formatters, ecl-utilities, catkin, ecl-exceptions, ecl-license, ecl-errors, ecl-type-traits, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-melodic-ecl-containers";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_containers/0.62.2-0.tar.gz;
    sha256 = "754395eafaca8f39801e1b53e4abc321787bbb47341aa82a767b507651114126";
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
