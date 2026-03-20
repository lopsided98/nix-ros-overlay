
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-agnocast-cie-thread-configurator";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_cie_thread_configurator/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "f136426525738887fe1c0979b21010fb20852add6fd31c1b043c5e9bfe908b34";
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
