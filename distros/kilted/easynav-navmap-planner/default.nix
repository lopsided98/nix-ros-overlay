
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pluginlib }:
buildRosPackage {
  pname = "ros-kilted-easynav-navmap-planner";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_navmap_planner/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "0709125d0e11fd5daa79caadbc9d6d076fb9ffbef8b928269e03252c31d7a967";
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
