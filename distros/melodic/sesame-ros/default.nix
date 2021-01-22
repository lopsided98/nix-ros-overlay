
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, libffi, message-generation, message-runtime, openssl }:
buildRosPackage {
  pname = "ros-melodic-sesame-ros";
  version = "2.1.21-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/sesame_ros/2.1.21-3.tar.gz";
    name = "2.1.21-3.tar.gz";
    sha256 = "95ddd1143652531c2b970f83ef7e79e53d11d3133f1f945c25a5633ca33d286f";
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
