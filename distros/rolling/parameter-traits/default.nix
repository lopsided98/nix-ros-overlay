
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, fmt, rclcpp, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-parameter-traits";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/parameter_traits/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "9e9cf296b76697f80240a2f7f69031dcab5158ae67956193fc6e520b0e76b20a";
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
