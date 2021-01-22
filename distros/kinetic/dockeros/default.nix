
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rostest }:
buildRosPackage {
  pname = "ros-kinetic-dockeros";
  version = "1.0.3";

  src = fetchurl {
    url = "https://github.com/ct2034/dockeros-release/archive/release/kinetic/dockeros/1.0.3-0.tar.gz";
    name = "1.0.3-0.tar.gz";
    sha256 = "c7291cd8989bb1613c53c15193d16f82e8e438274c1f221352c1f695138a7489";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pythonPackages.docker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simply running ros nodes in docker containers on remote robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
