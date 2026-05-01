
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, diagnostic-updater, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, std-msgs, twist-mux-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-twist-mux";
  version = "4.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux-release/archive/release/lyrical/twist_mux/4.5.1-3.tar.gz";
    name = "4.5.1-3.tar.gz";
    sha256 = "a112af13ed010d09d4b4fa930b42b2f9bb883f57988715be5c1df037eb810e15";
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
