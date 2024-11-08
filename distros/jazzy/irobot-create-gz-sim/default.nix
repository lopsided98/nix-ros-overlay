
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-gz-bringup, irobot-create-gz-plugins, irobot-create-gz-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-gz-sim";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_gz_sim/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "7f5e0071ffff43fa5d7d5e7029689f35592ef299076f9f764bba7f359feb5c05";
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
