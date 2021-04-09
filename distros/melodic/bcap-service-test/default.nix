
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-service, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-bcap-service-test";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/bcap_service_test/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "52ccd106e855974f1baafec733917e23f13e43f5dda7543c8130f6a4a123ff0e";
  };

  buildType = "catkin";
  buildInputs = [ bcap-service ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bcap service test package includes a node for testing bcap service node.'';
    license = with lib.licenses; [ mit ];
  };
}
