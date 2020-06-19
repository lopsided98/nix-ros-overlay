
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nextage-calibration, nextage-description, nextage-gazebo, nextage-ik-plugin, nextage-moveit-config, nextage-ros-bridge }:
buildRosPackage {
  pname = "ros-melodic-rtmros-nextage";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/rtmros_nextage/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "1782ef9b7f29f11fcd1fd6f8c66dc6f65044e3f5b4343868678e6b6fd6ce4704";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nextage-calibration nextage-description nextage-gazebo nextage-ik-plugin nextage-moveit-config nextage-ros-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtmros_nextage package is a ROS interface for <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
