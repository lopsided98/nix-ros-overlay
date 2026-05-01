
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-interface, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-robotiq-controllers";
  version = "0.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/lyrical/robotiq_controllers/0.0.1-4.tar.gz";
    name = "0.0.1-4.tar.gz";
    sha256 = "bab5f020c279c9bb16a06e46e1e1fe2fbf793b699b9b7cf783989164ec8ce997";
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
