
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, resource-retriever, std-msgs, baldor, pythonPackages, catkin, rostopic, cv-bridge, visualization-msgs, image-geometry }:
buildRosPackage {
  pname = "ros-kinetic-criutils";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/crigroup/criutils-release/archive/release/kinetic/criutils/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "881ce3300f300fc3e1754010f5a0322d4c1a34f5fb285691ee5713fcd35e6840";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.termcolor pythonPackages.numpy sensor-msgs geometry-msgs resource-retriever std-msgs baldor rostopic cv-bridge visualization-msgs image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The criutils package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
