
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, nav-core, catkin, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-twist-recovery";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/lunar/twist_recovery/0.2.1-0.tar.gz;
    sha256 = "7693b9617e2b95740fcac04fdfb14b91e880651e7e0187a5eea7600df94e3bb7";
  };

  buildInputs = [ costmap-2d pluginlib base-local-planner nav-core geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner nav-core geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that performs a particular used-defined twist.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
