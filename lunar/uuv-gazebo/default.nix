
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-uuv-gazebo";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_gazebo/0.6.10-0.tar.gz;
    sha256 = "b0ec2b357c71a3aefc81f0339e246ff4c7fc3fae4b287eb9bce6a699c8b9aa2c";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_gazebo package'';
    license = with lib.licenses; [ asl20 ];
  };
}
