
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, catkin, ros-introspection, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-roscompile";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/wu-robotics/roscompile-release/archive/release/lunar/roscompile/1.0.1-0.tar.gz;
    sha256 = "e62b32090a414779d08061a4546c23b28a587d8a5508df8963f4ade279b21261";
  };

  buildInputs = [ ros-introspection catkin ];
  checkInputs = [ tf pluginlib geometry-msgs roslint ];
  propagatedBuildInputs = [ ros-introspection catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roscompile package'';
    #license = lib.licenses.BSD;
  };
}
