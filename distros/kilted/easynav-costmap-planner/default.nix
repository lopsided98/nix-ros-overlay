
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, nav-msgs, pluginlib }:
buildRosPackage {
  pname = "ros-kilted-easynav-costmap-planner";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_costmap_planner/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "2e27e6623631f0502df8b3db6773cff857efe1bfc106e2206b7a80763e9a7b61";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-costmap-common nav-msgs pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Costmap planner package.";
    license = with lib.licenses; [ asl20 ];
  };
}
