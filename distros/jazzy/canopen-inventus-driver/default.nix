
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, canopen, canopen-base-driver, canopen-core, canopen-interfaces, canopen-inventus-interfaces, canopen-master-driver, canopen-proxy-driver, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-canopen-inventus-driver";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/canopen_inventus-release/archive/release/jazzy/canopen_inventus_driver/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "9ec894aecf8fe273fb70ddcff4865b1b074403c51e377ffe6e79f83c50727a41";
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
