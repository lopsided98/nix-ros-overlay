
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, diagnostic-updater, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, std-msgs, twist-mux-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-twist-mux";
  version = "4.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux-release/archive/release/rolling/twist_mux/4.4.0-1.tar.gz";
    name = "4.4.0-1.tar.gz";
    sha256 = "a3bb2431b4dad78a6a4d09b1e05932b275e1aa74f2e0f573fd2339fc47c3ecaa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs rclcpp std-msgs twist-mux-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Twist multiplexer, which multiplex several velocity commands (topics) and
      allows to priorize or disable them (locks).";
    license = with lib.licenses; [ asl20 ];
  };
}
