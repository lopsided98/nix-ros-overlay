
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-interface, std-srvs }:
buildRosPackage {
  pname = "ros-iron-robotiq-controllers";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/iron/robotiq_controllers/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "09dbc74922749bd02df2050106166ddd5d647eca20b95aa0c3831cb4e705cadf";
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
