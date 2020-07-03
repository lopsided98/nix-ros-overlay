
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-nav2-util";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/nav2_util/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "409cff9e0515bdfceba1796114415489405b4d2e44dd73af4dee7eb1fd73e219";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common std-srvs ];
  propagatedBuildInputs = [ boost geometry-msgs lifecycle-msgs nav-msgs nav2-common nav2-msgs rclcpp rclcpp-action rclcpp-lifecycle test-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
