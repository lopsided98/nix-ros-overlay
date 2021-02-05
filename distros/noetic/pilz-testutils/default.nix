
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, pilz-utils, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-pilz-testutils";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/noetic/pilz_testutils/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "e201872b6f08576a6b71e119fc59c0de078c33fc12b5866d795adcae8c072792";
  };

  buildType = "catkin";
  buildInputs = [ pilz-utils roscpp sensor-msgs ];
  checkInputs = [ code-coverage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
