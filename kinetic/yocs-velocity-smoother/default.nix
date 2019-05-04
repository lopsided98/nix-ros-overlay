
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, ecl-threads, nav-msgs, nodelet, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-velocity-smoother";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_velocity_smoother/0.8.2-0.tar.gz;
    sha256 = "301ea3851f8e6b544e903177b47025430d8345efde31afbd883754e4c0763b83";
  };

  buildInputs = [ pluginlib roscpp ecl-threads nav-msgs dynamic-reconfigure nodelet geometry-msgs ];
  propagatedBuildInputs = [ pluginlib roscpp ecl-threads nav-msgs dynamic-reconfigure nodelet geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bound incoming velocity messages according to robot velocity and acceleration limits.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
