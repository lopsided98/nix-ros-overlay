
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, lifecycle-msgs, rclcpp, rclcpp-lifecycle, ros-testing }:
buildRosPackage {
  pname = "ros-lyrical-lifecycle";
  version = "0.37.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/lifecycle/0.37.8-3.tar.gz";
    name = "0.37.8-3.tar.gz";
    sha256 = "5dabbe6ec929c3ebc63036d655d792725105e74f271f52bcf9b630b89862b148";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ros-testing ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing demos for lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
