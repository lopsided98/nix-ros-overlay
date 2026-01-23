
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp, rclcpp-lifecycle, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-lifecycle";
  version = "0.33.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/lifecycle/0.33.9-1.tar.gz";
    name = "0.33.9-1.tar.gz";
    sha256 = "a18d4e544d5d37124b72a5c6c111bc10a390bf617690f22f3e572914c45781f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing demos for lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
