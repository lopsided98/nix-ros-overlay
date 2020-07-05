
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, cmake-modules, code-coverage, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-utils";
  version = "0.5.18-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_utils/0.5.18-1.tar.gz";
    name = "0.5.18-1.tar.gz";
    sha256 = "2b9bf57630d4ba1208ef24076030d983849f077c2bffa0265eca3de90e460356";
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
