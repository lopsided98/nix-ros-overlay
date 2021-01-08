
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, robot-localization, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-heron-control";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_control/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "cb88dca5fcf62f7494ba71d537bcbf28eb2188d889bb7d3e9fb709e6168e64cc";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ geometry-msgs pythonPackages.numpy robot-localization sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control package for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
