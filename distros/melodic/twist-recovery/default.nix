
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, geometry-msgs, nav-core, pluginlib, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-twist-recovery";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/twist_recovery/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "490d8eb344c2c9d14ece49b3993f764cb8a659738ecc72c25697b94c9f50d401";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ base-local-planner costmap-2d geometry-msgs nav-core pluginlib tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that performs a particular used-defined twist.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
