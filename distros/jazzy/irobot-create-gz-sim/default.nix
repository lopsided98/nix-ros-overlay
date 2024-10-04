
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-gz-bringup, irobot-create-gz-plugins, irobot-create-gz-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-gz-sim";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_gz_sim/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "9dbe5183a2cf0d475632495850aacb47c9041d203907539e11c721eb87f17393";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ irobot-create-gz-bringup irobot-create-gz-plugins irobot-create-gz-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for the iRobot(R) Create(R) 3 robot Ignition simulator";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
