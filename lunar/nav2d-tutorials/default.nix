
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2d-karto, nav2d-navigator, nav2d-remote, nav2d-operator, nav2d-msgs, catkin, nav2d-exploration, nav2d-localizer }:
buildRosPackage {
  pname = "ros-lunar-nav2d-tutorials";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/lunar/nav2d_tutorials/0.4.1-0.tar.gz;
    sha256 = "0b4992ec984e0b5a6d58c753b4225421a23507701a72e4d9c2eaf80385bd7766";
  };

  propagatedBuildInputs = [ nav2d-navigator nav2d-remote nav2d-karto nav2d-operator nav2d-msgs nav2d-exploration nav2d-localizer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a set of tutorials that run 2D-Navigation within Stage-Simulator.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
