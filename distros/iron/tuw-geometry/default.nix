
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-tuw-geometry";
  version = "0.0.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_geometry-release/archive/release/iron/tuw_geometry/0.0.7-4.tar.gz";
    name = "0.0.7-4.tar.gz";
    sha256 = "a3bc7fee8372d9ac3a85cdf3da5208451d78c779327f1f771877e7d38b5341a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The tuw_geometry package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
