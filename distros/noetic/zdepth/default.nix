
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-zdepth";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/zdepth/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "b42b58fa5454d032baeec2516fddddf1be41eabe967f8659125d101a09f104b3";
  };

  buildType = "cmake";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The zdepth package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
