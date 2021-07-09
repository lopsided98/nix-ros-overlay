
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, planner, pluginlib, roscpp, rrt }:
buildRosPackage {
  pname = "ros-melodic-planners-manager";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/planners_manager/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "eb119fee19273de3112ab71db31e0224cbde919a6f7e6293f172bbc87cc52672";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet planner pluginlib roscpp rrt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Planners_Manager package'';
    license = with lib.licenses; [ asl20 ];
  };
}
