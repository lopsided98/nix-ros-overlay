
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, ecl-geometry, ecl-linear-algebra, ecl-threads, geometry-msgs, kdl-conversions, kobuki-dock-drive, kobuki-msgs, message-filters, nav-msgs, nodelet, pluginlib, roscpp, rospy, std-msgs, yocs-cmd-vel-mux }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-auto-docking";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_auto_docking/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "de405b3ff1619332f66cdeacc64251da10f72961edce4973f8d414cb9d50aec4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs ecl-geometry ecl-linear-algebra ecl-threads geometry-msgs kdl-conversions kobuki-dock-drive kobuki-msgs message-filters nav-msgs nodelet pluginlib roscpp rospy std-msgs yocs-cmd-vel-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Automatic docking for Kobuki:
	    Users owning a docking station for Kobuki can use this tool to let Kobuki find its nest autonomously.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
