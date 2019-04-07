
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, libyamlcpp, catkin, tinyxml, roscpp, stdr-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-stdr-parser";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_parser/0.3.2-0.tar.gz;
    sha256 = "8f8d08d6f47fb9a326a3a4bfa2d2d2d5cb3c08f25991bf4e169931f5be82bef0";
  };

  buildInputs = [ libyamlcpp roslib cmake-modules stdr-msgs roscpp tinyxml ];
  propagatedBuildInputs = [ libyamlcpp roslib stdr-msgs roscpp tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a library to STDR Simulator, to parse yaml and xml description files.'';
    #license = lib.licenses.GPLv3;
  };
}
