
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-power-board, power-monitor, catkin, ocean-battery-driver }:
buildRosPackage {
  pname = "ros-lunar-pr2-power-drivers";
  version = "1.1.7";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/lunar/pr2_power_drivers/1.1.7-0.tar.gz;
    sha256 = "4dffb0df0642fa67dd472ad668a50dae2a4c3e1e917f84160f2d5b9fcb887154";
  };

  propagatedBuildInputs = [ pr2-power-board power-monitor ocean-battery-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Power drivers for the PR2 robot.'';
    #license = lib.licenses.BSD;
  };
}
