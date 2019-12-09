
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppcheck, cccc, catkin, catkin-virtualenv }:
buildRosPackage {
  pname = "ros-kinetic-haros-catkin";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/rosin-project/haros_catkin-release/archive/release/kinetic/haros_catkin/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "5a787f6806ab9d9acff5b676317b685e1c0cd4e6575150dd63a5a0b008c7f58e";
  };

  buildType = "catkin";
  buildInputs = [ catkin-virtualenv ];
  propagatedBuildInputs = [ cppcheck cccc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin integration for HAROS (version 3.6.0)'';
    license = with lib.licenses; [ mit ];
  };
}
