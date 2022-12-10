
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, diagnostic-updater, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-twist-mux";
  version = "4.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux-release/archive/release/rolling/twist_mux/4.1.0-2.tar.gz";
    name = "4.1.0-2.tar.gz";
    sha256 = "48124c254756d8363be450559ebba526cdb2213c8dff400d3052835694663a3d";
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
