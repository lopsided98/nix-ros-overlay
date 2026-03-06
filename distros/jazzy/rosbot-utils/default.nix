
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep257, laser-filters, launch-ros, python3Packages, pythonPackages, stm32flash, usbutils }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-utils";
  version = "0.18.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_utils/0.18.6-1.tar.gz";
    name = "0.18.6-1.tar.gz";
    sha256 = "e4c9b9bb7b7d2fb60dd1a333b903e3cc3dcc976c095bab41c20824e8dc95e659";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ laser-filters launch-ros python3Packages.argcomplete python3Packages.libgpiod python3Packages.pyftdi python3Packages.pyserial python3Packages.requests python3Packages.sh pythonPackages.pyudev stm32flash usbutils ];

  meta = {
    description = "Utilities for ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
