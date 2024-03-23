
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-odri-master-board-sdk";
  version = "1.0.6-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/odri_master_board_sdk-release/archive/release/rolling/odri_master_board_sdk/1.0.6-4.tar.gz";
    name = "1.0.6-4.tar.gz";
    sha256 = "91212d3b6352c5ead4eebd5a8219879b355bcda92e12e35d0ee97f8fcf42bf4d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost git python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "This project contains the sdk for the communication between a computer
        and the master-board";
    license = with lib.licenses; [ bsd3 ];
  };
}
