
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp-lifecycle, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-humble-lifecycle";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/lifecycle/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "f07d3a60cf616c69451eba2f3ca396d5a28327fd567a8c61531425c9e6ef6df2";
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
