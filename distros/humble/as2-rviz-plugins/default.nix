
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, as2-core, as2-motion-reference-handlers, as2-msgs, geometry-msgs, qt5, rclcpp, rviz-common, rviz-rendering, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-rviz-plugins";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_rviz_plugins/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "a5a58331a4e2f27a7006cbb244b539e84f0d94882867e101fe2be88552d91dbf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-motion-reference-handlers as2-msgs geometry-msgs qt5.qtbase rclcpp rviz-common rviz-rendering sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tutorials showing how to write plugins for RViz.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
