
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-bcap-core";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/bcap_core/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "18f0b6aae9b70cb71672a6b890b0bb4db7bc17c01c226fab40eab8ea1e6326c2";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bcap core package includes libraries for communicating ORiN via b-CAP (Binary - Controller Access Protocol) protocol.'';
    license = with lib.licenses; [ mit ];
  };
}
