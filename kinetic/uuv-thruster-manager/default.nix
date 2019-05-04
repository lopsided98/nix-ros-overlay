
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, message-generation, uuv-gazebo-ros-plugins-msgs, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-thruster-manager";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_thruster_manager/0.6.10-0.tar.gz;
    sha256 = "9048a90e21b86367c234f958d9c8579c142f04549ae2b852d38e3d0bd2a70b75";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ pythonPackages.pyyaml uuv-gazebo-ros-plugins-msgs message-runtime rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thruster manager package'';
    license = with lib.licenses; [ asl20 ];
  };
}
