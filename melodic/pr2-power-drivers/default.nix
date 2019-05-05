
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-power-board, power-monitor, catkin, ocean-battery-driver }:
buildRosPackage {
  pname = "ros-melodic-pr2-power-drivers";
  version = "1.1.7";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/melodic/pr2_power_drivers/1.1.7-0.tar.gz;
    sha256 = "a9c7ac432f7b7adbc1d91393381847c11f2ef23301a4ed5213b661d8855ed12c";
  };

  propagatedBuildInputs = [ pr2-power-board power-monitor ocean-battery-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Power drivers for the PR2 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
