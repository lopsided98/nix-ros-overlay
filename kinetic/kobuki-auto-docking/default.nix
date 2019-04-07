
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-conversions, kobuki-msgs, pluginlib, actionlib-msgs, catkin, kobuki-dock-drive, message-filters, ecl-geometry, ecl-threads, nav-msgs, actionlib, nodelet, rospy, std-msgs, yocs-cmd-vel-mux, roscpp, ecl-linear-algebra, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-auto-docking";
  version = "0.7.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_auto_docking/0.7.6-0.tar.gz;
    sha256 = "de405b3ff1619332f66cdeacc64251da10f72961edce4973f8d414cb9d50aec4";
  };

  buildInputs = [ kdl-conversions kobuki-msgs pluginlib actionlib-msgs kobuki-dock-drive message-filters ecl-geometry roscpp ecl-threads rospy nav-msgs actionlib std-msgs nodelet ecl-linear-algebra geometry-msgs ];
  propagatedBuildInputs = [ kdl-conversions kobuki-msgs pluginlib actionlib-msgs kobuki-dock-drive message-filters ecl-geometry roscpp ecl-threads rospy nav-msgs actionlib ecl-linear-algebra std-msgs yocs-cmd-vel-mux nodelet geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Automatic docking for Kobuki:
	    Users owning a docking station for Kobuki can use this tool to let Kobuki find its nest autonomously.'';
    #license = lib.licenses.BSD;
  };
}
