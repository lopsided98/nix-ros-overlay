
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, diagnostic-updater, iw, rclcpp, wireless-msgs }:
buildRosPackage {
  pname = "ros-lyrical-wireless-watcher";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/lyrical/wireless_watcher/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "fa7cb18ccb89fb0bd0a69b806554e856ccf06beb38bea03d4b255e6cabcaab14";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-updater iw rclcpp wireless-msgs ];

  meta = {
    description = "A node which publishes connection information about a linux wireless interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
