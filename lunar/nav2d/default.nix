
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2d-karto, nav2d-navigator, nav2d-remote, nav2d-operator, nav2d-tutorials, nav2d-msgs, catkin, nav2d-exploration, nav2d-localizer }:
buildRosPackage {
  pname = "ros-lunar-nav2d";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/lunar/nav2d/0.4.1-0.tar.gz;
    sha256 = "2c41aea28ed4ac661e69ab2b9dfaf762aceb2ce41bb277af2f20361cf1a79f50";
  };

  propagatedBuildInputs = [ nav2d-localizer nav2d-navigator nav2d-remote nav2d-karto nav2d-operator nav2d-tutorials nav2d-msgs nav2d-exploration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-Package containing modules for 2D-Navigation'';
    #license = lib.licenses.GPLv3;
  };
}
