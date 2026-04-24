
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, alsaUtils, ament-cmake, ament-cmake-python, ament-pep257, generate-parameter-library, laser-filters, launch-ros, python3Packages, pythonPackages, stm32flash, usbutils }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-utils";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_utils/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9b2fae57e38747ab3a6a73b842c418009ebcde047b90287347046cd3ff9416ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ alsaUtils generate-parameter-library laser-filters launch-ros python3Packages.argcomplete python3Packages.libgpiod python3Packages.pyftdi python3Packages.pyserial python3Packages.sh pythonPackages.pyudev stm32flash usbutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Utilities for ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
