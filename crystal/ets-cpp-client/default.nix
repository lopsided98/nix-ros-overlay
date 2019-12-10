
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ets-msgs, launch-ros, rclcpp, rcutils, rmw, rmw-implementation-cmake, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-crystal-ets-cpp-client";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/brunodmt/ets_ros2-release/archive/release/crystal/ets_cpp_client/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "fd8f72849064578c712fd7d106067af72c38aadfeb89fea2f19e90244df93b44";
  };

  buildType = "ament_cmake";
  buildInputs = [ rmw-implementation-cmake ];
  propagatedBuildInputs = [ ets-msgs launch-ros rclcpp rcutils rmw rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ETS2/ATS sample client'';
    license = with lib.licenses; [ asl20 ];
  };
}
