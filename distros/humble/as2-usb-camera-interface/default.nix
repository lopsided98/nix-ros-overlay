
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, as2-core, as2-msgs, cv-bridge, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-usb-camera-interface";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_usb_camera_interface/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "fd405021b91312a26c74ac94e9fb9341d7fb67718697fc777b892f2aad956924";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ];
  propagatedBuildInputs = [ as2-core as2-msgs cv-bridge rclcpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''USB camera driver'';
    license = with lib.licenses; [ bsd3 ];
  };
}
