
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robotis-controller-msgs";
  version = "0.1.4";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-Framework-msgs-release/archive/release/kinetic/robotis_controller_msgs/0.1.4-0.tar.gz";
    name = "0.1.4-0.tar.gz";
    sha256 = "9fea20927e971d80a1a84c96772ba751f82d9f365953693a81128fa4334acb1b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package includes ROS messages and services for robotis_framework packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
