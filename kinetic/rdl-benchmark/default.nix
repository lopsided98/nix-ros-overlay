
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rdl-cmake, rdl-urdfreader, gtest, catkin, rdl-dynamics }:
buildRosPackage {
  pname = "ros-kinetic-rdl-benchmark";
  version = "1.1.0";

  src = fetchurl {
    url = https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl_benchmark/1.1.0-0;
    sha256 = "2fd90df67337deadde23ca02ecf0f683c26c8547fc268d5b9794d784a34c37b4";
  };

  checkInputs = [ gtest ];
  propagatedBuildInputs = [ rdl-cmake rdl-dynamics rdl-urdfreader ];
  nativeBuildInputs = [ rdl-cmake catkin rdl-dynamics rdl-urdfreader ];

  meta = {
    description = ''The rdl_benchmark package'';
    #license = lib.licenses.zlib;
  };
}
