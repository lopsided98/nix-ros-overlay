
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, uuv-control-utils, lauv-description, lauv-control }:
buildRosPackage {
  pname = "ros-lunar-lauv-gazebo";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/lunar/lauv_gazebo/0.1.6-0.tar.gz;
    sha256 = "f82a40a69996cea15b6f6bc7ce16154a6dbc140e1683521f7718957029a9276c";
  };

  propagatedBuildInputs = [ rosbag lauv-description uuv-control-utils lauv-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Sample launch files to start a simulated LAUV in Gazebo.'';
    #license = lib.licenses.Apache-2.0;
  };
}
