
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cmake-modules, boost, class-loader, catkin, tinyxml-2, roslib }:
buildRosPackage {
  pname = "ros-melodic-pluginlib";
  version = "1.12.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/pluginlib-release/archive/release/melodic/pluginlib/1.12.1-0.tar.gz;
    sha256 = "51ad8cc72b954cf0fb32b8e562eaa2f24d830ce72832320582ec2075b95958e1";
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
