
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, message-generation, uuv-gazebo-ros-plugins-msgs, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-thruster-manager";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_thruster_manager/0.6.12-0.tar.gz;
    sha256 = "25d6bff9803e5bce5e9c8f84242a08f1a5f03d69cc31b17faad1af9b0dc83008";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ pythonPackages.pyyaml uuv-gazebo-ros-plugins-msgs message-runtime rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thruster manager package'';
    license = with lib.licenses; [ asl20 ];
  };
}
