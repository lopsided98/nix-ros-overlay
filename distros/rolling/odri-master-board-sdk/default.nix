
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch2, cmake, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-odri-master-board-sdk";
  version = "1.0.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/odri_master_board_sdk-release/archive/release/rolling/odri_master_board_sdk/1.0.7-3.tar.gz";
    name = "1.0.7-3.tar.gz";
    sha256 = "1346ee9ccb0e5fff4ebb00697258153ee794b98a2d4daa00764d0d9d184ee531";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ catch2 ];
  propagatedBuildInputs = [ boost git python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "This project contains the sdk for the communication between a computer
        and the master-board";
    license = with lib.licenses; [ bsd3 ];
  };
}
