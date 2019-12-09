
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-mapping, robot-state-publisher, map-server, catkin, slam-karto, gmapping, rviz, rosbag, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-roomblock-mapping";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/tork-a/roomblock-release/archive/release/kinetic/roomblock_mapping/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "58b3139207f765914135ba9687832e49f9add781b72280e51c28bf3633e0febb";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ hector-mapping robot-state-publisher map-server slam-karto gmapping rviz rosbag ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomblock_mapping package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
