
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rdl-cmake, rdl-dynamics, rdl-urdfreader }:
buildRosPackage {
  pname = "ros-kinetic-rdl-benchmark";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/kinetic/rdl_benchmark/1.1.0-0/rdl_release-release-kinetic-rdl_benchmark-1.1.0-0.tar.gz";
    name = "rdl_release-release-kinetic-rdl_benchmark-1.1.0-0.tar.gz";
    sha256 = "944352a11d327120539fa85abf5df6181b688162f5ea144d034be3a8114d7ac4";
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
