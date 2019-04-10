
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, suitesparse, nav2d-msgs, tf, catkin, nav2d-localizer, tbb, nav-msgs, visualization-msgs, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-nav2d-karto";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/lunar/nav2d_karto/0.4.1-0.tar.gz;
    sha256 = "41841be3ad54cab097f3b2373de906a1fdd07005f59b50269583ce243659b0d0";
  };

  buildInputs = [ suitesparse nav2d-msgs tf roscpp tbb nav2d-localizer nav-msgs eigen visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ suitesparse nav2d-msgs tf roscpp tbb nav2d-localizer nav-msgs eigen visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graph-based Simultaneous Localization and Mapping module.
    Includes OpenKarto GraphSLAM library by &quot;SRI International&quot;.'';
    #license = lib.licenses.GPLv3;
  };
}
