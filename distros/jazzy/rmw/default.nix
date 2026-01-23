
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-cmake-version, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcutils, rosidl-dynamic-typesupport, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-jazzy-rmw";
  version = "7.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/jazzy/rmw/7.3.3-1.tar.gz";
    name = "7.3.3-1.tar.gz";
    sha256 = "527d9828f67ed01be06dd841d35167e1378fe1f6ee992587611049f64597ed15";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ament-cmake-version ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ rcutils rosidl-dynamic-typesupport rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ament-cmake-version ];

  meta = {
    description = "Contains the ROS middleware API.";
    license = with lib.licenses; [ asl20 ];
  };
}
