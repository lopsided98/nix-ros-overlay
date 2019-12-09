
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, pythonPackages, catkin, robot-localization }:
buildRosPackage {
  pname = "ros-kinetic-heron-control";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_control/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "d6c0ff6da42c06798880f29e435c7ce1b3705fa6cc77e39fb4a0e39e9083cecc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.numpy sensor-msgs geometry-msgs robot-localization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control package for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
