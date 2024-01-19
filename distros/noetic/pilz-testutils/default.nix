
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, pilz-utils, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-pilz-testutils";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/noetic/pilz_testutils/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "a26eecef74aadd16dc7c5f8f1d9c57b54e139504a61d0725276167a026231960";
  };

  buildType = "catkin";
  buildInputs = [ catkin pilz-utils roscpp sensor-msgs ];
  checkInputs = [ code-coverage rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
