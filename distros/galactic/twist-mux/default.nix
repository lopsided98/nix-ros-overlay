
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, diagnostic-updater, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-twist-mux";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/twist_mux-release/archive/release/galactic/twist_mux/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "0d0216eaf197e326ba6e804126646761f009d3a0d83bf3aaad1509a3374ab770";
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
