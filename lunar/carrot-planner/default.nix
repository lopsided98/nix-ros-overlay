
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, tf, nav-core, catkin, eigen, roscpp }:
buildRosPackage {
  pname = "ros-lunar-carrot-planner";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/carrot_planner/1.15.2-0.tar.gz;
    sha256 = "10320e6e159105f234e350a06f64ef8acadd60198826d4d83c4e5e5564677010";
  };

  buildInputs = [ costmap-2d pluginlib base-local-planner tf nav-core eigen roscpp ];
  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner tf nav-core eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This planner attempts to find a legal place to put a carrot for the robot to follow. It does this by moving back along the vector between the robot and the goal point.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
