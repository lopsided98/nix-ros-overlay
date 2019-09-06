
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2d-karto, nav2d-navigator, nav2d-remote, nav2d-operator, nav2d-tutorials, nav2d-msgs, catkin, nav2d-exploration, nav2d-localizer }:
buildRosPackage {
  pname = "ros-melodic-nav2d";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "290981964bfb9d4a38651fa57f321fe5b777363ac3e0b6f8dc0fd69ba4ec0a6b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nav2d-navigator nav2d-remote nav2d-karto nav2d-operator nav2d-tutorials nav2d-msgs nav2d-exploration nav2d-localizer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-Package containing modules for 2D-Navigation'';
    license = with lib.licenses; [ gpl3 ];
  };
}
