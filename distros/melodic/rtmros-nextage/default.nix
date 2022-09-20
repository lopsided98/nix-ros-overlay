
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nextage-description, nextage-gazebo, nextage-ik-plugin, nextage-moveit-config, nextage-ros-bridge }:
buildRosPackage {
  pname = "ros-melodic-rtmros-nextage";
  version = "0.8.6-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/rtmros_nextage/0.8.6-3.tar.gz";
    name = "0.8.6-3.tar.gz";
    sha256 = "f2c142f406e576dcf8820ec267d0dfb4c3dec98e32d87dc15e9901bd17451660";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nextage-description nextage-gazebo nextage-ik-plugin nextage-moveit-config nextage-ros-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtmros_nextage package is a ROS interface for <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
