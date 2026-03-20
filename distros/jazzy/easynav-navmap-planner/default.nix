
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-easynav-navmap-planner";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_navmap_planner/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "e451a35ceb84b4758f8aa64d66142c7348555bd2298654e16bdbb4bbc7e1d19c";
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
