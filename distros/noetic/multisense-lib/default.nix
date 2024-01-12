
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, libpng }:
buildRosPackage {
  pname = "ros-noetic-multisense-lib";
  version = "4.0.5-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/noetic/multisense_lib/4.0.5-1.tar.gz";
    name = "4.0.5-1.tar.gz";
    sha256 = "071544f8344d81e4194c353a6674846bd6967990980c4f3d6fc7954b7c303514";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge libpng ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
