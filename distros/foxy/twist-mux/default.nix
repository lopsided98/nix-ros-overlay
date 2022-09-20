
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, diagnostic-updater, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-twist-mux";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/twist_mux-release/archive/release/foxy/twist_mux/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "18805bae9e5dadc57609fe8255a31ac157e2a0289a24d1c21c24b70cdda940af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs rclcpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Twist multiplexer, which multiplex several velocity commands (topics) and
      allows to priorize or disable them (locks).'';
    license = with lib.licenses; [ cc-by-nc-sa-40 ];
  };
}
