
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, cmake-modules, code-coverage, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-utils";
  version = "0.5.17-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_utils/0.5.17-1.tar.gz";
    name = "0.5.17-1.tar.gz";
    sha256 = "51cef91499a579ea560f922c09180e6ff3647b86f67e8549a0542e7619990b11";
  };

  buildType = "catkin";
  buildInputs = [ clang roscpp ];
  checkInputs = [ cmake-modules code-coverage rostest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_utils package contains utilities used by Pilz packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
