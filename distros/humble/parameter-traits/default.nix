
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, fmt, rclcpp, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-humble-parameter-traits";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/humble/parameter_traits/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "aa41318ae08b08f9aeda1c5c74fb51e95ddc5bbc1d3fa99c4984e1a9194e0501";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt rclcpp rsl tcb-span tl-expected ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Functions and types for rclcpp::Parameter";
    license = with lib.licenses; [ bsd3 ];
  };
}
