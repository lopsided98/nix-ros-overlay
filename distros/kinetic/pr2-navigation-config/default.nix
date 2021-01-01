
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, move-base }:
buildRosPackage {
  pname = "ros-kinetic-pr2-navigation-config";
  version = "0.1.28";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_navigation_config/0.1.28-0.tar.gz";
    name = "0.1.28-0.tar.gz";
    sha256 = "f43112e8fd99573415ffe4b82aa281353bd8cd25461e5d2dc3437b46ea23e4c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds common configuration files for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
