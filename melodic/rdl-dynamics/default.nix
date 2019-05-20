
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rdl-cmake, gtest, catkin, doxygen, lcov, eigen, graphviz }:
buildRosPackage {
  pname = "ros-melodic-rdl-dynamics";
  version = "3.2.0-r1";

  src = fetchurl {
    url = https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/melodic/rdl_dynamics/3.2.0-1;
    sha256 = "02996f90bf325b1c47f8b436761468a0af9662aa937ec90250cf10ecd7107fa0";
  };

  buildInputs = [ eigen graphviz doxygen ];
  checkInputs = [ lcov gtest rdl-cmake ];
  propagatedBuildInputs = [ eigen graphviz doxygen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_dynamics package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
