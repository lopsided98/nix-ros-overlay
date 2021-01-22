
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, app-manager, catkin, willow-maps }:
buildRosPackage {
  pname = "ros-kinetic-pr2-app-manager";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/pr2_app_manager/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "b8d0139219289dc915413d1ebe1c9bf5d3a499f67b55a9ad5751371ee66aaff0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ app-manager willow-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and tools for running the application manager on the PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
