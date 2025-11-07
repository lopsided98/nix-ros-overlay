
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-libnav, mrpt-libros-bridge, mrpt-nav-interfaces, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-mrpt-reactivenav2d";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/kilted/mrpt_reactivenav2d/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "986a27f638ebf0e6b0f38409c4fc24705311343d8153a16dd83a2b7bee9ceb3e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto geometry-msgs mrpt-libnav mrpt-libros-bridge mrpt-nav-interfaces nav-msgs rclcpp rclcpp-components sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Reactive navigation for wheeled robots using MRPT navigation algorithms (TP-Space)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
