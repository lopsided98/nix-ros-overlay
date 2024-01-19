
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, crane-plus-control, crane-plus-description, crane-plus-moveit-config, cv-bridge, geometry-msgs, image-geometry, moveit-ros-planning-interface, opencv, rclcpp, tf2-geometry-msgs, usb-cam }:
buildRosPackage {
  pname = "ros-humble-crane-plus-examples";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/humble/crane_plus_examples/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "de5040345ca7eedc5abf3ff7c0043418a9769dd9ed2e1619cdd963caf9034b2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ crane-plus-control crane-plus-description crane-plus-moveit-config cv-bridge geometry-msgs image-geometry moveit-ros-planning-interface opencv opencv.cxxdev rclcpp tf2-geometry-msgs usb-cam ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+ V2 examples package'';
    license = with lib.licenses; [ asl20 ];
  };
}
