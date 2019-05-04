
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-simulator, desktop-full, pr2-navigation, rqt-pr2-dashboard, pr2-apps, pr2-base, catkin, pr2-power-drivers, pr2-ethercat-drivers }:
buildRosPackage {
  pname = "ros-kinetic-pr2-desktop";
  version = "1.1.3";

  src = fetchurl {
    url = https://github.com/PR2-prime/pr2_metapackages-release/archive/release/kinetic/pr2_desktop/1.1.3-0.tar.gz;
    sha256 = "329f83ab3a280f61827493de84cdf286e4ba0f19831f68d7fbc40e4d635ae74b";
  };

  propagatedBuildInputs = [ pr2-simulator desktop-full pr2-navigation rqt-pr2-dashboard pr2-apps pr2-base pr2-power-drivers pr2-ethercat-drivers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
