
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-lifecycle, ros-testing, std-msgs, ament-lint-common, ament-cmake, ament-lint-auto, lifecycle-msgs }:
buildRosPackage {
  pname = "ros-eloquent-lifecycle";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/lifecycle/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "3bb067abd8915d122a412488ffa6cff94719f15be91cc836a308b642439acd51";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rclcpp-lifecycle lifecycle-msgs ];
  checkInputs = [ ament-lint-common ros-testing ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs rclcpp-lifecycle lifecycle-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing demos for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
