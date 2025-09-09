
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-interface, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-robotiq-controllers";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/kilted/robotiq_controllers/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "7568c2479732bc997d9755af92114e0c240ee2d3078f39e1028eb0e9026df1ab";
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
