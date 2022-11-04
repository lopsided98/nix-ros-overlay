
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rostest }:
buildRosPackage {
  pname = "ros-melodic-dockeros";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ct2034/dockeros-release/archive/release/melodic/dockeros/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5c2e6a8bcf8bf6db553a1d597f143037da1ee614a3ef62d633ccf602de779c74";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pythonPackages.docker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simply running ros nodes in docker containers on remote robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
