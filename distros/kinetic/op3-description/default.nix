
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rviz }:
buildRosPackage {
  pname = "ros-kinetic-op3-description";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-Common-release/archive/release/kinetic/op3_description/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "9b80d00afd5f15797cbbdf640ff6a4ad6db3dff1845c1c0614a55dd24af42134";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
