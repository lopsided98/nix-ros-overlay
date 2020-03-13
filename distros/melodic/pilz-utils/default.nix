
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, cmake-modules, code-coverage, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-utils";
  version = "0.5.14-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_utils/0.5.14-1.tar.gz";
    name = "0.5.14-1.tar.gz";
    sha256 = "1bcefccc449f970dafccbd1f504fa64253a52514b6eda0d930b5577bfa850715";
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
