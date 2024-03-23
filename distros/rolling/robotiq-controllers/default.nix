
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-interface, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-robotiq-controllers";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/rolling/robotiq_controllers/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "dbc9682330cd61ff3d4d18776033aea54b622a1371e20ad20d0f31640bdb9b42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-interface std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controllers for the Robotiq gripper.";
    license = with lib.licenses; [ bsd3 ];
  };
}
