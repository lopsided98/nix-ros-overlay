
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, nav-msgs, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-easynav-costmap-planner";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_costmap_planner/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "fba8423bdd07cbbee76c413c88f35140d1024358d163099a8ba62b10d7c86875";
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
