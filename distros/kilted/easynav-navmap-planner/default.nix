
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pluginlib }:
buildRosPackage {
  pname = "ros-kilted-easynav-navmap-planner";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_navmap_planner/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "6596c806f29515a25afac1e0344fae586c9f094a244d9c58bb3490ea53ee5523";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core nav-msgs navmap-core navmap-ros navmap-ros-interfaces pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: navmap planner package.";
    license = with lib.licenses; [ asl20 ];
  };
}
