
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, ros-core, class-loader, catkin, bond-core, actionlib, nodelet-core, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-ros-base";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/lunar/ros_base/1.3.2-0.tar.gz;
    sha256 = "6d75252dff61cb5f56dcc6125a4c3019c7aec1156a31f96b5621adc3900ed87b";
  };

  propagatedBuildInputs = [ bond-core dynamic-reconfigure actionlib pluginlib ros-core nodelet-core class-loader ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_core and includes other basic non-robot tools like actionlib, dynamic reconfigure, nodelets, and pluginlib.'';
    #license = lib.licenses.BSD;
  };
}
