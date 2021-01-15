
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nextage-calibration, nextage-description, nextage-gazebo, nextage-ik-plugin, nextage-moveit-config, nextage-ros-bridge }:
buildRosPackage {
  pname = "ros-kinetic-rtmros-nextage";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/rtmros_nextage/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "062a6a8b5587c95f114e49d6e65a237d641bf4648271951efdfbb0b4e41aca50";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nextage-calibration nextage-description nextage-gazebo nextage-ik-plugin nextage-moveit-config nextage-ros-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtmros_nextage package is a ROS interface for <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
