
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppcheck, cccc, catkin, catkin-virtualenv }:
buildRosPackage {
  pname = "ros-melodic-haros-catkin";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/rosin-project/haros_catkin-release/archive/release/melodic/haros_catkin/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "b8b53adbf7f2de24566dc6990f033e9d7c397e37dbcc0c54f19b7e03a601371d";
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
