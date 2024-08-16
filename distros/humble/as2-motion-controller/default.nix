
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, as2-core, as2-motion-reference-handlers, as2-msgs, eigen, gbenchmark, geometry-msgs, pluginlib, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-as2-motion-controller";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_motion_controller/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "4937f2c3b0036f429dc2284c65406188167f8144d480c688c15edc18fe0aa330";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-motion-reference-handlers as2-msgs eigen gbenchmark geometry-msgs pluginlib rclcpp yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AS2 Controller Package";
    license = with lib.licenses; [ bsd3 ];
  };
}
