
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, ros-introspection, roslint, tf }:
buildRosPackage {
  pname = "ros-melodic-roscompile";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/melodic/roscompile/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "09449c45a4b93695d6faf539f2d2a59f91c971d54f38beb9b0ecd317f18e702c";
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
