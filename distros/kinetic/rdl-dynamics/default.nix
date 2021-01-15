
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, doxygen, eigen, graphviz, gtest, lcov, rdl-cmake }:
buildRosPackage {
  pname = "ros-kinetic-rdl-dynamics";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl_dynamics/1.1.0-0";
    name = "archive.tar.gz";
    sha256 = "65b04cf2a3b86031f11f44bbb8f02db4f237a3a6a5aef4086fe32e67ce789ec7";
  };

  buildType = "catkin";
  checkInputs = [ gtest lcov rdl-cmake ];
  propagatedBuildInputs = [ doxygen eigen graphviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_dynamics package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
