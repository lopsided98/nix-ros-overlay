
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, cmake-modules, code-coverage, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-pilz-utils";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/noetic/pilz_utils/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "90a7aaec8293d761ba0e226e730c49c5ca6bf7fe337318c857de368f10387176";
  };

  buildType = "catkin";
  buildInputs = [ catkin clang roscpp ];
  checkInputs = [ cmake-modules code-coverage rostest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_utils package contains utilities used by Pilz packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
