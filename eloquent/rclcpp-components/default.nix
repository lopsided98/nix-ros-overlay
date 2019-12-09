
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, composition-interfaces, ament-cmake-ros, launch-testing, std-msgs, ament-lint-common, ament-lint-auto, rcpputils, class-loader, ament-index-cpp, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp-components";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/eloquent/rclcpp_components/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "ebbd60a1bd4e9c8190acfd73e92d0933f6b53dd84061a611213b585c47465276";
  };

  buildType = "ament_cmake";
  buildInputs = [ composition-interfaces rcpputils class-loader ament-index-cpp rclcpp ];
  checkInputs = [ launch-testing std-msgs ament-lint-common ament-lint-auto ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp rclcpp composition-interfaces class-loader ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing tools for dynamically loadable components'';
    license = with lib.licenses; [ asl20 ];
  };
}
