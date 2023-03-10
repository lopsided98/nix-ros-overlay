
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-service, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-bcap-service-test";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/bcap_service_test/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "94c99cf05ead0538b97a5df06ff73521985e7a5ee568207165d2b5ff9728e1f4";
  };

  buildType = "catkin";
  buildInputs = [ bcap-service catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bcap service test package includes a node for testing bcap service node.'';
    license = with lib.licenses; [ mit ];
  };
}
