
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, cmake-modules, code-coverage, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-utils";
  version = "0.5.19-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_utils/0.5.19-1.tar.gz";
    name = "0.5.19-1.tar.gz";
    sha256 = "0873bf68ee412aa333ffa03ccb6f35e2fbce0a0fa5e4fa5d35362abec72d5acb";
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
