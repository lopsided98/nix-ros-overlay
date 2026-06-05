
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, forward-global-planner, geometry-msgs, nav-2d-utils, nav-msgs, nav2-core, nav2-costmap-2d, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-backward-global-planner";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/backward_global_planner/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "3c0e3541124b4cd5a0efc8421cc93b923dec161378e1180f4cf1dfb274553811";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ angles forward-global-planner geometry-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The backward_global_planner package.";
    license = with lib.licenses; [ "BSDv3" ];
  };
}
