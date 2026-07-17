
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, alsa-utils, ament-cmake, ament-cmake-pytest, ament-cmake-python, generate-parameter-library, launch, launch-pytest, launch-ros, launch-testing, python3Packages, pythonPackages, rclcpp, rclpy, sensor-msgs, std-srvs, stm32flash, usbutils }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-utils";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_utils/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "31d812bb581299aed4642cd9af4b9fd31a7fd5e9b68e6485e1dfa434b8002905";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest launch launch-pytest launch-ros launch-testing python3Packages.pytest python3Packages.pyyaml rclpy ];
  propagatedBuildInputs = [ alsa-utils generate-parameter-library launch-ros python3Packages.argcomplete python3Packages.libgpiod python3Packages.pyftdi python3Packages.pyserial python3Packages.sh pythonPackages.pyudev rclcpp sensor-msgs std-srvs stm32flash usbutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Utilities for ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
