
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, world-canvas-utils, catkin, world-canvas-msgs, pythonPackages, warehouse-ros, visualization-msgs, rospy, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-world-canvas-server";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/world_canvas-release/archive/release/kinetic/world_canvas_server/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "30992a15d19cf71ce4f49eacc57850671e5065a73d1fd47f0752bafc33ce4c03";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ world-canvas-utils world-canvas-msgs pythonPackages.pymongo warehouse-ros visualization-msgs rospy nav-msgs rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Storage manager and server for WCF semantic maps.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
