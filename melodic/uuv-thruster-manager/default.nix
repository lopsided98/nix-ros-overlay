
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, message-generation, uuv-gazebo-ros-plugins-msgs, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-thruster-manager";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_thruster_manager/0.6.10-0.tar.gz;
    sha256 = "dd532c59413536c744721b16f10a97da19a7d88d721bf1954a495529438f2ad3";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ pythonPackages.pyyaml uuv-gazebo-ros-plugins-msgs message-runtime rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thruster manager package'';
    license = with lib.licenses; [ asl20 ];
  };
}
