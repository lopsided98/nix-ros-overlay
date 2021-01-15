
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-pr2-navigation-apps";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation_apps-release/archive/release/kinetic/pr2_navigation_apps/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "bb75c2d06a6c1fde1ccc874ae061efde889dbc5cbdd2b1cf97223648b6874f2b";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_navigation_apps package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
