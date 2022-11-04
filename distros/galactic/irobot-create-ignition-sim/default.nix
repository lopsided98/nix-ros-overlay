
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-ignition-bringup, irobot-create-ignition-plugins, irobot-create-ignition-toolbox }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-ignition-sim";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_ignition_sim/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "9454d36221968004272abf94ed8c19dc3c91daff5a87087f24b70b07a56a5ff8";
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
