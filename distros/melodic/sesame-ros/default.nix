
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, libffi, message-generation, message-runtime, openssl }:
buildRosPackage {
  pname = "ros-melodic-sesame-ros";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/sesame_ros/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "54c6a98ad8fd96458951922cad11a0479c9d2896aa446eeeed3d105ea124a97e";
  };

  buildType = "catkin";
  buildInputs = [ catkin-virtualenv libffi message-generation openssl ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS API for Sesame smart lock'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
