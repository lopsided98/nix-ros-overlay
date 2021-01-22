
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rdl-cmake, rdl-dynamics, rdl-urdfreader }:
buildRosPackage {
  pname = "ros-kinetic-rdl-benchmark";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl_benchmark/1.1.0-0";
    name = "archive.tar.gz";
    sha256 = "2fd90df67337deadde23ca02ecf0f683c26c8547fc268d5b9794d784a34c37b4";
  };

  buildType = "catkin";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ rdl-cmake rdl-dynamics rdl-urdfreader ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_benchmark package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
