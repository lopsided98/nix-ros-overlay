
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp-lifecycle, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-lifecycle";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "ef27813c92ff7594c041d21826dd4541138e767d7fd4172a63257b6bd25deb31";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing demos for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
