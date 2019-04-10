
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, navfn, nav-core, catkin, roscpp, nav-msgs, dynamic-reconfigure, angles, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-global-planner";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/global_planner/1.15.2-0.tar.gz;
    sha256 = "1d178a186ff0ce73348ea29645b6f98707214132b012b7595670dfb363a0f448";
  };

  buildInputs = [ costmap-2d pluginlib navfn nav-core roscpp nav-msgs angles dynamic-reconfigure tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib navfn nav-core roscpp nav-msgs dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A path planner library and node.'';
    #license = lib.licenses.BSD;
  };
}
