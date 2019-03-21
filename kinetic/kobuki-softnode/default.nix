
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kobuki-msgs, tf, sensor-msgs, catkin, nav-msgs, robot-state-publisher, kobuki-description, diagnostic-aggregator, nodelet, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-softnode";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki_soft-release/archive/release/kinetic/kobuki_softnode/0.1.3-0.tar.gz;
    sha256 = "4dfe45f4d62f9c3645046f4ef432126b33477a58ea95d4cee0db1128141be6e7";
  };

  propagatedBuildInputs = [ kobuki-msgs tf sensor-msgs roscpp nav-msgs robot-state-publisher kobuki-description diagnostic-aggregator nodelet geometry-msgs ];
  nativeBuildInputs = [ nav-msgs kobuki-msgs catkin nodelet geometry-msgs sensor-msgs tf roscpp ];

  meta = {
    description = ''ROS nodelet for fake Kobuki.'';
    #license = lib.licenses.BSD;
  };
}
