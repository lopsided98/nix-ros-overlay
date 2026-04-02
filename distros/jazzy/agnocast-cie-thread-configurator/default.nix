
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-agnocast-cie-thread-configurator";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast_cie_thread_configurator/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "5830ff91c5022f64fa420847abfad9073c75c4f75438ebbeb813712ef3edc5d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ agnocast-cie-config-msgs rclcpp yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A dedicated node that configures the scheduling attributes of each thread in callback_isolated_executor.";
    license = with lib.licenses; [ asl20 ];
  };
}
