
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, cmake-modules, code-coverage, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-pilz-utils";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/noetic/pilz_utils/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "8ac7d40019d37984f6ebe72bb8c65a63f80019f9c15d40a9f68c60e514f6c922";
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
