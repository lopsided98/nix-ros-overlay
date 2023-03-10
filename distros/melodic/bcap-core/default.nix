
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-bcap-core";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/bcap_core/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "32ee2acfefb5650e5fd8c274e4aba365828c9b0f9cd1440a2e77545ea6821ecb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bcap core package includes libraries for communicating ORiN via b-CAP (Binary - Controller Access Protocol) protocol.'';
    license = with lib.licenses; [ mit ];
  };
}
