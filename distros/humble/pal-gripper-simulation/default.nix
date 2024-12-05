
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-gazebo-worlds, pal-gripper-controller-configuration, pal-gripper-description, pal-urdf-utils, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-gripper-simulation";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gripper-release/archive/release/humble/pal_gripper_simulation/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "03843b2439224c89916907746dcc54bfd9d7bf79dedcbb98cf2c7e7265d8ddc4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pal-gazebo-worlds pal-gripper-controller-configuration pal-gripper-description pal-urdf-utils robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Pal gripper simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
