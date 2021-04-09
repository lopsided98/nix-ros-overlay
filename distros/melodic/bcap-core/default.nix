
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-bcap-core";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/bcap_core/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "9a236eeb1a4ad0f7abbb4e515d81f319cb0a6ee8e5c9da1a879020a7b641e073";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bcap core package includes libraries for communicating ORiN via b-CAP (Binary - Controller Access Protocol) protocol.'';
    license = with lib.licenses; [ mit ];
  };
}
