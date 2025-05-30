
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, canopen, canopen-base-driver, canopen-core, canopen-interfaces, canopen-inventus-interfaces, canopen-master-driver, canopen-proxy-driver, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-canopen-inventus-driver";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/canopen_inventus-release/archive/release/jazzy/canopen_inventus_driver/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "491ad389eba45fcf9336a3a20502f1fb6f357bcb79009b1c37a8f1b7eb77ff3b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ canopen canopen-base-driver canopen-core canopen-interfaces canopen-inventus-interfaces canopen-master-driver canopen-proxy-driver lely-core-libraries lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_canopen implementation of Inventus BMS driver";
    license = with lib.licenses; [ bsd3 ];
  };
}
