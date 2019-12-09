
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2d-exploration, nav2d-localizer, catkin, nav2d-remote, nav2d-operator, nav2d-navigator, nav2d-karto, nav2d-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav2d-tutorials";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_tutorials/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "ae60ec866cca40ba8cd6f96181b3dfed1bde5cac12dd9813260a77837e078b3b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nav2d-exploration nav2d-localizer nav2d-remote nav2d-operator nav2d-navigator nav2d-karto nav2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a set of tutorials that run 2D-Navigation within Stage-Simulator.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
