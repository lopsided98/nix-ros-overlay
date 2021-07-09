
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, mavros-msgs, planner, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rrt";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/rrt/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "b1219689bd9895c4a2b29d43a34f29f6d02ef1904ab23dbb667b4ec21c0a7edd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs mavros-msgs planner roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The RRT package'';
    license = with lib.licenses; [ "BCD" ];
  };
}
