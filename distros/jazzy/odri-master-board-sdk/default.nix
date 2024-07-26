
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch2, cmake, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-odri-master-board-sdk";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/odri_master_board_sdk-release/archive/release/jazzy/odri_master_board_sdk/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "3360e29b7c439fd59e4ffc7a8beb981f63dfdc6bf533b6bb2227e3729f42b365";
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
