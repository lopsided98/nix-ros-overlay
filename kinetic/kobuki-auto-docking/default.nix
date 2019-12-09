
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-filters, geometry-msgs, ecl-linear-algebra, pluginlib, std-msgs, ecl-geometry, kobuki-dock-drive, catkin, actionlib, yocs-cmd-vel-mux, ecl-threads, actionlib-msgs, nodelet, roscpp, kobuki-msgs, rospy, nav-msgs, kdl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-auto-docking";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_auto_docking/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "de405b3ff1619332f66cdeacc64251da10f72961edce4973f8d414cb9d50aec4";
  };

  buildType = "catkin";
  buildInputs = [ message-filters geometry-msgs ecl-linear-algebra ecl-geometry pluginlib std-msgs actionlib kobuki-dock-drive actionlib-msgs nodelet roscpp kobuki-msgs rospy ecl-threads nav-msgs kdl-conversions ];
  propagatedBuildInputs = [ message-filters geometry-msgs ecl-linear-algebra ecl-geometry pluginlib std-msgs kobuki-dock-drive actionlib yocs-cmd-vel-mux ecl-threads actionlib-msgs nodelet roscpp kobuki-msgs rospy nav-msgs kdl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Automatic docking for Kobuki:
	    Users owning a docking station for Kobuki can use this tool to let Kobuki find its nest autonomously.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
