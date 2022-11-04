
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, cmake-modules, code-coverage, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-utils";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/melodic/pilz_utils/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "1d9c69d9031b3672f7eba222b81ed50fef31a7c8188e310e476889ee1d3131c9";
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
