
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-easynav-navmap-planner";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_navmap_planner/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "bc8a29170bd9d5b2eac6e74bf5dd5446dcf03323a63e3500ad773481b9672115";
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
