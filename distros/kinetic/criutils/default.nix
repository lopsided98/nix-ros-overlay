
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, cv-bridge, geometry-msgs, image-geometry, pythonPackages, resource-retriever, rostopic, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-criutils";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/crigroup/criutils-release/archive/release/kinetic/criutils/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "881ce3300f300fc3e1754010f5a0322d4c1a34f5fb285691ee5713fcd35e6840";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ baldor cv-bridge geometry-msgs image-geometry pythonPackages.numpy pythonPackages.termcolor resource-retriever rostopic sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The criutils package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
