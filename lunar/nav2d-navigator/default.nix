
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, pluginlib, actionlib-msgs, nav2d-operator, nav2d-msgs, tf, catkin, message-generation, message-runtime, actionlib, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-nav2d-navigator";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/lunar/nav2d_navigator/0.4.1-0.tar.gz;
    sha256 = "a225df03db643a1e4e71d8323fda871d862cb7d52d0ca4e53d52c6a4112bb83f";
  };

  buildInputs = [ std-srvs pluginlib actionlib-msgs nav2d-operator nav2d-msgs tf message-generation actionlib roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs pluginlib actionlib-msgs nav2d-operator tf nav2d-msgs message-runtime actionlib roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a node for higher level navigation of a mobile
    robot in a planar environment. It needs a map and the robot's position
    within this map to create a plan for navigation. When used together with
    a SLAM module it can also be used to perform autonomous exploration of
    the robot's workspace.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
