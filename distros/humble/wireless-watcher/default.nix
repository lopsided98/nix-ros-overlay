
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp, wireless-msgs, wirelesstools }:
buildRosPackage {
  pname = "ros-humble-wireless-watcher";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/humble/wireless_watcher/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "980987630ce9f1885a8ca528c198de553c1f70cee2d467ab153245937169ce4b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp wireless-msgs wirelesstools ];

  meta = {
    description = "A node which publishes connection information about a linux wireless interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
