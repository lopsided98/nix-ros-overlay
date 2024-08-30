
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-gz-bringup, irobot-create-gz-plugins, irobot-create-gz-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-gz-sim";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_gz_sim/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "d4394aab7abdd32d2e86d7c30af5e267bfa0daabb2be970b8ea910c84d5f3a23";
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
