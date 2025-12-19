
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, geometry-msgs, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-easynav-controller";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_controller/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "d6704ba38262c9477067605e927bdce2b298e43404becb7ef6ff2bb96cf0c4b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core geometry-msgs lifecycle-msgs pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Controller package.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
