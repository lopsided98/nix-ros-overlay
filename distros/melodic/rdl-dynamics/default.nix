
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, doxygen, eigen, graphviz, gtest, lcov, rdl-cmake }:
buildRosPackage {
  pname = "ros-melodic-rdl-dynamics";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl_dynamics/3.2.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "02996f90bf325b1c47f8b436761468a0af9662aa937ec90250cf10ecd7107fa0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest lcov rdl-cmake ];
  propagatedBuildInputs = [ doxygen eigen graphviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_dynamics package'';
    license = with lib.licenses; [ "Zlib" ];
  };
}
