
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, as2-msgs, rclcpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-behavior";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behavior/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "0c1b6e3820191aeb8e763c90b028f7cd24176da4aa4b050fc5f468045427a367";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake as2-core as2-msgs rclcpp std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aerostack2 Behavior Class'';
    license = with lib.licenses; [ bsd3 ];
  };
}
