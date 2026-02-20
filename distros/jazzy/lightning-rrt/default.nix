
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, lightning-rrt-interfaces, nav-msgs, rclcpp, ros2launch, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-lightning-rrt";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/david-dorf/lightning_rrt/archive/release/jazzy/lightning_rrt/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "eca2d7246c45714aa13a6a0deb018863aeff65cebce5a3caf99ae65694736030";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs lightning-rrt-interfaces nav-msgs rclcpp ros2launch std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Lightning fast RRT path planner";
    license = with lib.licenses; [ mit ];
  };
}
