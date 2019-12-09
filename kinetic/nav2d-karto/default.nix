
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tbb, geometry-msgs, nav2d-localizer, tf, catkin, suitesparse, eigen, visualization-msgs, roscpp, nav-msgs, nav2d-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav2d-karto";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d_karto/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "e9aaba2fc88c8ffb4abfa03d60bf299e3663da41a5f953ecb65939e5af6677d3";
  };

  buildType = "catkin";
  buildInputs = [ tbb geometry-msgs nav2d-localizer tf suitesparse eigen visualization-msgs roscpp nav-msgs nav2d-msgs ];
  propagatedBuildInputs = [ tbb geometry-msgs nav2d-localizer tf suitesparse eigen visualization-msgs roscpp nav-msgs nav2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graph-based Simultaneous Localization and Mapping module.
    Includes OpenKarto GraphSLAM library by &quot;SRI International&quot;.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
