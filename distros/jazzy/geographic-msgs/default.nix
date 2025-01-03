
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-jazzy-geographic-msgs";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/jazzy/geographic_msgs/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "21810e5eca998b864bbe2db130c2557020fc461dd5e67cd700302571743887a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages for Geographic Information Systems.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
