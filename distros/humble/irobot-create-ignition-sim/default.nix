
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-ignition-bringup, irobot-create-ignition-plugins, irobot-create-ignition-toolbox }:
buildRosPackage {
  pname = "ros-humble-irobot-create-ignition-sim";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_ignition_sim/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "3912de38b233de6dacad5becb1066cad467907881ac4008f8895ac984f70e791";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ irobot-create-ignition-bringup irobot-create-ignition-plugins irobot-create-ignition-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for the iRobot(R) Create(R) 3 robot Ignition simulator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
