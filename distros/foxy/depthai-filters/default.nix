
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, cv-bridge, image-transport, message-filters, opencv, rclcpp, rclcpp-components, sensor-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-foxy-depthai-filters";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/foxy/depthai_filters/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "a1ea2a104338b7ea700ec543883011f5bad9a27239f12e0fa2acad0de61c9101";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ cv-bridge image-transport message-filters opencv rclcpp rclcpp-components sensor-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Depthai filters package'';
    license = with lib.licenses; [ mit ];
  };
}
