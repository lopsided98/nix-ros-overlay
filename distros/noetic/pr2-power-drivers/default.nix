
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ocean-battery-driver, power-monitor, pr2-power-board }:
buildRosPackage {
  pname = "ros-noetic-pr2-power-drivers";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/noetic/pr2_power_drivers/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "b516414a382960abb0ed4d2092fa16c4f85ff984d36fbea56704927116e15a19";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ocean-battery-driver power-monitor pr2-power-board ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Power drivers for the PR2 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
