
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, as2-core, as2-msgs, cv-bridge, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-usb-camera-interface";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_usb_camera_interface/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "1874e8da2499d698ef54725f6b73af61258f1abe28ff4a87b53a46486b26136c";
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
