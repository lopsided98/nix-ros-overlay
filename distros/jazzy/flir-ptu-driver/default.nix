
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, diagnostic-updater, rclcpp, robot-state-publisher, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-flir-ptu-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/jazzy/flir_ptu_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d27a5eb141b53361eac43a02ae56c9ac54ded649fb21f17c793f8fa4dd864d51";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-updater rclcpp robot-state-publisher sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 driver for FLIR pan-tilt units with serial and TCP/Ethernet support.";
    license = with lib.licenses; [ "GPL-2.0-or-later" ];
  };
}
