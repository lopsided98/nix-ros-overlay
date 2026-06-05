
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-2d-utils, nav-msgs, nav2-core, nav2-costmap-2d, nav2z-planners-common, rclcpp, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-undo-path-global-planner";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/undo_path_global_planner/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "025ecfae0365f087f0e3e10ca92e3c13569df14153011248811b925435fb6d2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2z-planners-common rclcpp tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The undo_path_global_planner package.";
    license = with lib.licenses; [ "BSDv3" ];
  };
}
