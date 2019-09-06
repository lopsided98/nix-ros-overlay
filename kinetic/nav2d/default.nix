
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2d-karto, nav2d-navigator, nav2d-remote, nav2d-operator, nav2d-tutorials, nav2d-msgs, catkin, nav2d-exploration, nav2d-localizer }:
buildRosPackage {
  pname = "ros-kinetic-nav2d";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "a30719eb17149ddabe2be4d0588a1af00ddb005af2fcaaa0cac36c5c9e8c17c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nav2d-navigator nav2d-remote nav2d-karto nav2d-operator nav2d-tutorials nav2d-msgs nav2d-exploration nav2d-localizer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-Package containing modules for 2D-Navigation'';
    license = with lib.licenses; [ gpl3 ];
  };
}
