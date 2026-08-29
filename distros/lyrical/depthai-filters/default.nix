
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, cv-bridge, depthai-ros-msgs, image-transport, message-filters, opencv, rclcpp, rclcpp-components, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-depthai-filters";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/lyrical/depthai_filters/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "f780ca9924025fbe35ac49f711b25cbe3af33f75f588f12389171935c9e63ed3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ cv-bridge depthai-ros-msgs image-transport message-filters opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Depthai filters package";
    license = with lib.licenses; [ mit ];
  };
}
