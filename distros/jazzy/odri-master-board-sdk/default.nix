
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-odri-master-board-sdk";
  version = "1.0.6-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/odri_master_board_sdk-release/archive/release/jazzy/odri_master_board_sdk/1.0.6-5.tar.gz";
    name = "1.0.6-5.tar.gz";
    sha256 = "aeb351435e4276a088e55936551db0d98a5044e29e828915ed93e2981310a7f9";
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
