
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-tuw-geometry";
  version = "0.0.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_geometry-release/archive/release/rolling/tuw_geometry/0.0.7-3.tar.gz";
    name = "0.0.7-3.tar.gz";
    sha256 = "0b642408b297260de9d38c9e9607d5559fb4b83c04d515e414e9710bcec4e15b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tuw_geometry package";
    license = with lib.licenses; [ bsd3 ];
  };
}
