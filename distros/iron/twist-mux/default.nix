
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, diagnostic-updater, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-twist-mux";
  version = "4.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux-release/archive/release/iron/twist_mux/4.1.0-4.tar.gz";
    name = "4.1.0-4.tar.gz";
    sha256 = "92312c1bae5440520562cd319e797be6c9f947409ce2dfd5c571ddea992456a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs rclcpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Twist multiplexer, which multiplex several velocity commands (topics) and
      allows to priorize or disable them (locks).'';
    license = with lib.licenses; [ asl20 ];
  };
}
