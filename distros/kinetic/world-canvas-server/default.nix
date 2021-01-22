
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-msgs, pythonPackages, rospy, rostest, visualization-msgs, warehouse-ros, world-canvas-msgs, world-canvas-utils }:
buildRosPackage {
  pname = "ros-kinetic-world-canvas-server";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/world_canvas-release/archive/release/kinetic/world_canvas_server/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "30992a15d19cf71ce4f49eacc57850671e5065a73d1fd47f0752bafc33ce4c03";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nav-msgs pythonPackages.pymongo rospy rostest visualization-msgs warehouse-ros world-canvas-msgs world-canvas-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Storage manager and server for WCF semantic maps.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
