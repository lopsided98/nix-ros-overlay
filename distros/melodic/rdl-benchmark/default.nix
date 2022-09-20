
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rdl-cmake, rdl-dynamics, rdl-urdfreader }:
buildRosPackage {
  pname = "ros-melodic-rdl-benchmark";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl_benchmark/3.2.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "b3764041b76d8541b11d5acdb176bed3be086ec1b953a41aa2b56b42898d34aa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ rdl-cmake rdl-dynamics rdl-urdfreader ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_benchmark package'';
    license = with lib.licenses; [ "Zlib" ];
  };
}
