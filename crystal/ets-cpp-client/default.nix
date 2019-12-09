
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rcutils, rmw-implementation-cmake, std-msgs, rosidl-default-runtime, launch-ros, ament-cmake, ets-msgs, rmw, rclcpp }:
buildRosPackage {
  pname = "ros-crystal-ets-cpp-client";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/brunodmt/ets_ros2-release/archive/release/crystal/ets_cpp_client/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "fd8f72849064578c712fd7d106067af72c38aadfeb89fea2f19e90244df93b44";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rmw-implementation-cmake std-msgs ets-msgs rmw rclcpp ];
  propagatedBuildInputs = [ rcutils rosidl-default-runtime std-msgs launch-ros ets-msgs rmw rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ETS2/ATS sample client'';
    license = with lib.licenses; [ asl20 ];
  };
}
