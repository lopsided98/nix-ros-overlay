
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp, rclcpp-lifecycle, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-lifecycle";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "e5b8c977fd47b86550a5fd0cc70fc7c4f3cde5c46e6264d765f09b2eee38a87b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing demos for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
