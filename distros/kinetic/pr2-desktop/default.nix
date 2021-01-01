
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, desktop-full, pr2-apps, pr2-base, pr2-ethercat-drivers, pr2-navigation, pr2-power-drivers, pr2-simulator, rqt-pr2-dashboard }:
buildRosPackage {
  pname = "ros-kinetic-pr2-desktop";
  version = "1.1.3";

  src = fetchurl {
    url = "https://github.com/PR2-prime/pr2_metapackages-release/archive/release/kinetic/pr2_desktop/1.1.3-0.tar.gz";
    name = "1.1.3-0.tar.gz";
    sha256 = "329f83ab3a280f61827493de84cdf286e4ba0f19831f68d7fbc40e4d635ae74b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ desktop-full pr2-apps pr2-base pr2-ethercat-drivers pr2-navigation pr2-power-drivers pr2-simulator rqt-pr2-dashboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
