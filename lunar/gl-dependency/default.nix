
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-gl-dependency";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/gl_dependency-release/archive/release/lunar/gl_dependency/1.1.0-0.tar.gz;
    sha256 = "0c78dcf34e3c49635238b3bec4becaa4d1ddc2469d90adab63929373f6a50428";
  };

  propagatedBuildInputs = [ pythonPackages.pyqt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the GL dependency for a specific ROS distribution and its Qt version'';
    #license = lib.licenses.BSD;
  };
}
