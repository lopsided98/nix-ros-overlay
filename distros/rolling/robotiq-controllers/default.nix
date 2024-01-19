
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-interface, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-robotiq-controllers";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/rolling/robotiq_controllers/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "44cc464665cabe88dfb6bdc99a2f7c1e80f18cf0e791afd952ac9e04dd8ee6c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-interface std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controllers for the Robotiq gripper.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
