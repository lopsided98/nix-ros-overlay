
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cmake-modules, boost, class-loader, catkin, tinyxml-2, roslib }:
buildRosPackage {
  pname = "ros-kinetic-pluginlib";
  version = "1.11.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/pluginlib-release/archive/release/kinetic/pluginlib/1.11.3-0.tar.gz;
    sha256 = "6721d4877042f9f9f665f0415841b232cde3ce94f8af1ecb426ebcb292e327ad";
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
