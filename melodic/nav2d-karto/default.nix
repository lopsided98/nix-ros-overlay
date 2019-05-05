
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, suitesparse, nav2d-msgs, tf, catkin, nav2d-localizer, tbb, nav-msgs, visualization-msgs, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav2d-karto";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_karto/0.4.2-0.tar.gz;
    sha256 = "43cc5478e64f5499139be34e4cdc8015fa3ca70d03bd49134c85b83e6934b0a2";
  };

  buildInputs = [ suitesparse nav2d-msgs tf nav2d-localizer tbb nav-msgs visualization-msgs eigen roscpp geometry-msgs ];
  propagatedBuildInputs = [ suitesparse nav2d-msgs tf nav2d-localizer tbb nav-msgs visualization-msgs eigen roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graph-based Simultaneous Localization and Mapping module.
    Includes OpenKarto GraphSLAM library by &quot;SRI International&quot;.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
