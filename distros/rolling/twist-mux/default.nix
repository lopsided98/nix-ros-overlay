
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, diagnostic-updater, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-twist-mux";
  version = "4.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux-release/archive/release/rolling/twist_mux/4.1.0-3.tar.gz";
    name = "4.1.0-3.tar.gz";
    sha256 = "2c55c4037e6c0f6ec384616afd4684b1c949a702a383f8b965fcb95a0aae0c0c";
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
