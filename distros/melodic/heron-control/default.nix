
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, robot-localization, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-heron-control";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/melodic/heron_control/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "fd775e78508739fa2e7860a3c9b23c24e37f1b9015a75de364c91693aed01738";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ geometry-msgs pythonPackages.numpy robot-localization sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control package for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
