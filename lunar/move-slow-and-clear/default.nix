
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, cmake-modules, nav-core, catkin, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-move-slow-and-clear";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/move_slow_and_clear/1.15.2-0.tar.gz;
    sha256 = "35f4417e74627b984876de0f6ed9296295dbb4dab531bb264dbb75f17fbd0a03";
  };

  buildInputs = [ costmap-2d cmake-modules pluginlib nav-core roscpp geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib nav-core roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''move_slow_and_clear'';
    #license = lib.licenses.BSD;
  };
}
