
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, ament-lint-auto, rclcpp, nav-msgs, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-dummy-map-server";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/dummy_map_server/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "b47c90dc0dee589d1ef70e3f19c733559055585f752acbc3d62c2359975f6637";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp nav-msgs ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp nav-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy map server node'';
    license = with lib.licenses; [ asl20 ];
  };
}
