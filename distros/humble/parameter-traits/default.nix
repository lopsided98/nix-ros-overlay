
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, fmt, rclcpp, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-humble-parameter-traits";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/humble/parameter_traits/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "db4a76d3dab1a6b2729ee9229bc60ec8eae3f1841a2cb44e481211bf6fd09bdf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt rclcpp rsl tcb-span tl-expected ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Functions and types for rclcpp::Parameter";
    license = with lib.licenses; [ bsd3 ];
  };
}
