
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-zdepth";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/zdepth/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "f9704355706b716ccf1f855257b70e564d42ebd224e97661dba346d441c457b9";
  };

  buildType = "cmake";
  buildInputs = [ catkin ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The zdepth package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
