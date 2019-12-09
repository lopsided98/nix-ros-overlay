
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake-modules, roslib, catkin, class-loader, tinyxml-2, rosconsole }:
buildRosPackage {
  pname = "ros-melodic-pluginlib";
  version = "1.12.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/pluginlib-release/archive/release/melodic/pluginlib/1.12.1-0.tar.gz";
    name = "1.12.1-0.tar.gz";
    sha256 = "51ad8cc72b954cf0fb32b8e562eaa2f24d830ce72832320582ec2075b95958e1";
  };

  buildType = "catkin";
  buildInputs = [ boost cmake-modules roslib class-loader tinyxml-2 rosconsole ];
  propagatedBuildInputs = [ boost roslib class-loader tinyxml-2 rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
