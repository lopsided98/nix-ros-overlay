
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, create-description, joint-state-publisher, robot-state-publisher, roslaunch, rostest, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-roomblock-description";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/tork-a/roomblock-release/archive/release/kinetic/roomblock_description/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "dc731325d4b4d206ed931f5ee2d23e7177faa0d9384c7e078549969ed5d90a34";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ create-description joint-state-publisher robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomblock_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
