
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2d-karto, nav2d-navigator, nav2d-remote, nav2d-operator, nav2d-msgs, catkin, nav2d-exploration, nav2d-localizer }:
buildRosPackage {
  pname = "ros-kinetic-nav2d-tutorials";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d_tutorials/0.3.2-0.tar.gz;
    sha256 = "9c66ef5f00925e81fb4a68fd239460790ea767033ef2a4487ff102296dd0906b";
  };

  propagatedBuildInputs = [ nav2d-navigator nav2d-remote nav2d-karto nav2d-operator nav2d-msgs nav2d-exploration nav2d-localizer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a set of tutorials that run 2D-Navigation within Stage-Simulator.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
