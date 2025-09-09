
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, as2-core, as2-motion-reference-handlers, as2-msgs, geometry-msgs, qt5, rclcpp, rviz-common, rviz-rendering, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-rviz-plugins";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_rviz_plugins/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "f21d5484179928dcf0787d09db2e0f2462de203bf140ddf1e44d4d1ff1ff5bb3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-motion-reference-handlers as2-msgs geometry-msgs qt5.qtbase rclcpp rviz-common rviz-rendering sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A very simple plugin for RViz.";
    license = with lib.licenses; [ bsd3 ];
  };
}
