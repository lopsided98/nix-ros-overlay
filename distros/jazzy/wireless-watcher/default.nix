
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp, wireless-msgs, wirelesstools }:
buildRosPackage {
  pname = "ros-jazzy-wireless-watcher";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/jazzy/wireless_watcher/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "90efeab7955fb141ad2edcfea6ed1bab914885c28fa7bde48b03ad2cc1f13fcb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp wireless-msgs wirelesstools ];

  meta = {
    description = "A node which publishes connection information about a linux wireless interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
