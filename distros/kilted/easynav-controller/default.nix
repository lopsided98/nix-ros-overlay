
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, geometry-msgs, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-easynav-controller";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_controller/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "70c1f521ab170c6613631b2f37c7845e469eb099a37b9deaf4ba17b29d723e38";
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
