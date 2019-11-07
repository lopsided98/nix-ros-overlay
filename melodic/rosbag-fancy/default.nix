
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, boost, rosfmt, catkin, ncurses, topic-tools, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosbag-fancy";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosbag_fancy-release/archive/release/melodic/rosbag_fancy/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "1cb76b16313a6cde9bf2e39d3be308af886107c0553b1141caa6a306309a3002";
  };

  buildType = "catkin";
  buildInputs = [ rosbag-storage boost rosfmt ncurses topic-tools roscpp ];
  propagatedBuildInputs = [ rosbag-storage boost rosfmt ncurses topic-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosbag with terminal UI'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
