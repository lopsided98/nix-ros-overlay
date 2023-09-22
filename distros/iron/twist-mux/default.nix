
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, diagnostic-updater, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, std-msgs, twist-mux-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-twist-mux";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux-release/archive/release/iron/twist_mux/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "f9d2b5c2865e4076fa8e3145fef5922911d7eab1b63891f3a6e69946a834d149";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs rclcpp std-msgs twist-mux-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Twist multiplexer, which multiplex several velocity commands (topics) and
      allows to priorize or disable them (locks).'';
    license = with lib.licenses; [ asl20 ];
  };
}
