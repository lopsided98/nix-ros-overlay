
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, cv-bridge, depthai-ros-msgs, image-transport, message-filters, opencv, rclcpp, rclcpp-components, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-depthai-filters";
  version = "2.10.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/iron/depthai_filters/2.10.3-1.tar.gz";
    name = "2.10.3-1.tar.gz";
    sha256 = "4466995a20f405066d41921e3802abf691c3dab2a616528667261be3eb1c1a2f";
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
