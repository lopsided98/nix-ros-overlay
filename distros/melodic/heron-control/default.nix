
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, robot-localization, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-heron-control";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/melodic/heron_control/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "579c60f33d46897fc2a13ca3d0506c3d94c09bda498cc4417aed3c167d11e536";
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
