
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch2, cmake, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-odri-master-board-sdk";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/odri_master_board_sdk-release/archive/release/rolling/odri_master_board_sdk/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "2bd32a62ae5ae7374b6df74c4f68a92cf3de7e8a7fe22958260d90728c30ad46";
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
