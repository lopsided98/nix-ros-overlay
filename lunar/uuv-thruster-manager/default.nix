
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, message-generation, uuv-gazebo-ros-plugins-msgs, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-thruster-manager";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_thruster_manager/0.6.12-0.tar.gz;
    sha256 = "6570a0b2c05e3845cbe8f56935e943891280128d894edcab1ec7f0fd46bec126";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ pythonPackages.pyyaml uuv-gazebo-ros-plugins-msgs message-runtime rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thruster manager package'';
    license = with lib.licenses; [ asl20 ];
  };
}
