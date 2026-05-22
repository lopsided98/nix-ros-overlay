
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-agnocast-cie-thread-configurator";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_cie_thread_configurator/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "9de8863e880a098a4c59401b1c92dd3684ec53944366c5dfeb24c8abd56ff1ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ agnocast-cie-config-msgs rclcpp yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A dedicated node that configures the scheduling attributes of each thread in callback_isolated_executor.";
    license = with lib.licenses; [ asl20 ];
  };
}
