
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, cv-bridge, pythonPackages, catkin, image-geometry, baldor, resource-retriever, rostopic, std-msgs, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-criutils";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/crigroup/criutils-release/archive/release/kinetic/criutils/0.1.3-0.tar.gz;
    sha256 = "881ce3300f300fc3e1754010f5a0322d4c1a34f5fb285691ee5713fcd35e6840";
  };

  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.termcolor sensor-msgs cv-bridge image-geometry baldor resource-retriever rostopic std-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The criutils package'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
