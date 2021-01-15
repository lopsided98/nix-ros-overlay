
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ocean-battery-driver, power-monitor, pr2-power-board }:
buildRosPackage {
  pname = "ros-kinetic-pr2-power-drivers";
  version = "1.1.7";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/kinetic/pr2_power_drivers/1.1.7-0.tar.gz";
    name = "1.1.7-0.tar.gz";
    sha256 = "c443406ec7bfffb8607e6c70809bc11e409fb8ea4bfe09d7ac0e02f0977fa1f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ocean-battery-driver power-monitor pr2-power-board ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Power drivers for the PR2 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
