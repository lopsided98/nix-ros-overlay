
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, eigen, geometry-msgs, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-easynav-navmap-planner";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/lyrical/easynav_navmap_planner/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "5c89878c17cc503bb5df74293c4b1105a2dbf2bca96ce2992cbe99efc4dd60ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core eigen geometry-msgs nav-msgs navmap-core navmap-ros navmap-ros-interfaces pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: navmap planner package.";
    license = with lib.licenses; [ asl20 ];
  };
}
