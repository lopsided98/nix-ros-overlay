
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, code-coverage, cmake-modules, catkin, rosunit, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-pilz-utils";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_utils/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "d9e0690cec48d88e597c46572a54db6385598f0b8f2882bdb4cd86dee3e71d8b";
  };

  buildType = "catkin";
  buildInputs = [ clang roscpp ];
  checkInputs = [ code-coverage cmake-modules rostest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_utils package contains utilities used by Pilz packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
