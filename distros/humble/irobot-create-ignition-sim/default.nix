
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-ignition-bringup, irobot-create-ignition-plugins, irobot-create-ignition-toolbox }:
buildRosPackage {
  pname = "ros-humble-irobot-create-ignition-sim";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_ignition_sim/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "bb1253fd1e649bda23e3d4b8a64b215269686d6284d272de19e3bce0e78fe3ac";
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
