
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nextage-gazebo, nextage-moveit-config, nextage-calibration, catkin, nextage-ik-plugin, nextage-description, nextage-ros-bridge }:
buildRosPackage {
  pname = "ros-kinetic-rtmros-nextage";
  version = "0.8.4";

  src = fetchurl {
    url = https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/rtmros_nextage/0.8.4-0.tar.gz;
    sha256 = "9c42cd4a7cf81130e9353c83b14ad314fe0067aca39540e90a232de6ff21c7d7";
  };

  propagatedBuildInputs = [ nextage-gazebo nextage-moveit-config nextage-calibration nextage-ik-plugin nextage-description nextage-ros-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtmros_nextage package is a ROS interface for <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
