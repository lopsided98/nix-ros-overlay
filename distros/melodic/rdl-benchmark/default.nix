
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rdl-cmake, rdl-dynamics, rdl-urdfreader }:
buildRosPackage {
  pname = "ros-melodic-rdl-benchmark";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl_benchmark/3.2.0-1/rdl_release-release-melodic-rdl_benchmark-3.2.0-1.tar.gz";
    name = "rdl_release-release-melodic-rdl_benchmark-3.2.0-1.tar.gz";
    sha256 = "d351794b18247cd31330fe3a9d7a84cd41c5bd8b65b3f9ed11a9abae582fed82";
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
