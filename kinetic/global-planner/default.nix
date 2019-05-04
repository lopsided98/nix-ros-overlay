
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, navfn, nav-core, catkin, roscpp, nav-msgs, angles, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-global-planner";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/global_planner/1.14.4-0.tar.gz;
    sha256 = "7aade98634a41e69f5a101ce83edc80c0da38b0246f4b95ca5ae881f325fd468";
  };

  buildInputs = [ costmap-2d pluginlib navfn nav-core roscpp nav-msgs dynamic-reconfigure angles tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib navfn nav-core roscpp nav-msgs dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A path planner library and node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
