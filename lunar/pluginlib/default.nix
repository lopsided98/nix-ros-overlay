
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cmake-modules, boost, class-loader, catkin, tinyxml-2, roslib }:
buildRosPackage {
  pname = "ros-lunar-pluginlib";
  version = "1.11.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/pluginlib-release/archive/release/lunar/pluginlib/1.11.3-0.tar.gz;
    sha256 = "c438ec7f318c3d09c5170296cfd9a87b928e77fc12163a4b32efecd932ad7f5b";
  };

  buildInputs = [ cmake-modules rosconsole boost tinyxml-2 class-loader roslib ];
  propagatedBuildInputs = [ tinyxml-2 rosconsole boost class-loader roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package.'';
    #license = lib.licenses.BSD;
  };
}
