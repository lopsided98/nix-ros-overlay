
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch2, cmake, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-odri-master-board-sdk";
  version = "1.0.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/odri_master_board_sdk-release/archive/release/lyrical/odri_master_board_sdk/1.0.7-4.tar.gz";
    name = "1.0.7-4.tar.gz";
    sha256 = "b53cc984765b9079f8b3287f9ffbf0b66422322162034384f1ee9376598ddb74";
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
