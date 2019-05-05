
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, catkin, ros-introspection, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-roscompile";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/wu-robotics/roscompile-release/archive/release/melodic/roscompile/1.0.1-0.tar.gz;
    sha256 = "09449c45a4b93695d6faf539f2d2a59f91c971d54f38beb9b0ecd317f18e702c";
  };

  buildInputs = [ ros-introspection catkin ];
  checkInputs = [ tf pluginlib geometry-msgs roslint ];
  propagatedBuildInputs = [ ros-introspection catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roscompile package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
