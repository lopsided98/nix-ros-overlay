
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, create-description, rostest, rviz, urdf, robot-state-publisher, roslaunch, joint-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-roomblock-description";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/tork-a/roomblock-release/archive/release/kinetic/roomblock_description/0.0.2-0.tar.gz;
    sha256 = "dc731325d4b4d206ed931f5ee2d23e7177faa0d9384c7e078549969ed5d90a34";
  };

  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ create-description urdf rviz robot-state-publisher joint-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomblock_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
