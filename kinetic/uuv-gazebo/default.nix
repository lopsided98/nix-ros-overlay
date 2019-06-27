
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-uuv-gazebo";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_gazebo/0.6.12-0.tar.gz;
    sha256 = "3454db7d312ea808ffa021f49aefcb4bdd79233d4da1d4abda21066c528130e1";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_gazebo package'';
    license = with lib.licenses; [ asl20 ];
  };
}
