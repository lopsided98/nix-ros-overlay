
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-service, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-bcap-service-test";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/bcap_service_test/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "5ee0c5f4cb25bb45edc6975bb6b609714c0d4924f48140c835cfb30898c28fe8";
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
