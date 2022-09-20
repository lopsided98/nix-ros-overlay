
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav2d-exploration, nav2d-karto, nav2d-localizer, nav2d-msgs, nav2d-navigator, nav2d-operator, nav2d-remote }:
buildRosPackage {
  pname = "ros-melodic-nav2d-tutorials";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_tutorials/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "ae60ec866cca40ba8cd6f96181b3dfed1bde5cac12dd9813260a77837e078b3b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nav2d-exploration nav2d-karto nav2d-localizer nav2d-msgs nav2d-navigator nav2d-operator nav2d-remote ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a set of tutorials that run 2D-Navigation within Stage-Simulator.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
