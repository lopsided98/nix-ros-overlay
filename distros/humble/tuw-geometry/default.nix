
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-tuw-geometry";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_geometry-release/archive/release/humble/tuw_geometry/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "215e05b246612ee0ec92451383998bac0ee82c0a223d97b0b59fed18bdad1152";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ opencv rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The tuw_geometry package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
