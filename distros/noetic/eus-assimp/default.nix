
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, catkin, euslisp, pkg-config, roseus }:
buildRosPackage {
  pname = "ros-noetic-eus-assimp";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/eus_assimp/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "6bca597963ebcd3f77a08289df6812a9bbfafc48a79d96136912a9bb3fed6d8b";
  };

  buildType = "catkin";
  buildInputs = [ catkin euslisp pkg-config ];
  propagatedBuildInputs = [ assimp-devel roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_assimp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
