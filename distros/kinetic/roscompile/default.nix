
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, ros-introspection, roslint, tf }:
buildRosPackage {
  pname = "ros-kinetic-roscompile";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/kinetic/roscompile/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "f82097dea3c6114b1012be659199e80b4307bb3d1f4b6edf2dd0a996987fd448";
  };

  buildType = "catkin";
  checkInputs = [ geometry-msgs pluginlib roslint tf ];
  propagatedBuildInputs = [ catkin ros-introspection ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roscompile package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
