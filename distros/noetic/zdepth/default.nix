
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-zdepth";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/zdepth/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "9469d31622e627743e75dbc19d39155b2117a69f17cdc1f6768e6d6af7f81910";
  };

  buildType = "cmake";
  buildInputs = [ catkin ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The zdepth package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
