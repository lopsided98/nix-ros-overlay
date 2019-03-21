
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, ecl-threads, nav-msgs, nodelet, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-velocity-smoother";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_velocity_smoother/0.8.2-0.tar.gz;
    sha256 = "9de916242e06317201e15ac26eb33949b8f7aeb84dc262ee44e82ce5ceb3328a";
  };

  propagatedBuildInputs = [ nav-msgs pluginlib dynamic-reconfigure geometry-msgs nodelet roscpp ecl-threads ];
  nativeBuildInputs = [ nav-msgs catkin pluginlib dynamic-reconfigure geometry-msgs nodelet roscpp ecl-threads ];

  meta = {
    description = ''Bound incoming velocity messages according to robot velocity and acceleration limits.'';
    #license = lib.licenses.BSD;
  };
}
