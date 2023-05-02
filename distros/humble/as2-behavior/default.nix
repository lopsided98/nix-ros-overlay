
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, as2-msgs, rclcpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-behavior";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behavior/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a4e7838e8bdd55b51e978d8b9393c75133c700847aff0dd1db0924eb462d8fb7";
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
