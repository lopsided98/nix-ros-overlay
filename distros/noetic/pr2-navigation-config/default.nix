
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, move-base }:
buildRosPackage {
  pname = "ros-noetic-pr2-navigation-config";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/pr2_navigation_config/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "b93b69cdb3b11916f3c40e2c93abf035e0dfc9e4a694d528a86c0d0a01403001";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds common configuration files for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
