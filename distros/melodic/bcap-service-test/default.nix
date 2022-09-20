
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-service, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-bcap-service-test";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/bcap_service_test/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "233a8c354d27ea11be4749ef1a1f759b906cc931585019115a913f685b42d87c";
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
