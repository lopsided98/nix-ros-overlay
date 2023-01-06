
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-runtime-c, rosidl-runtime-cpp, test-interface-files }:
buildRosPackage {
  pname = "ros-humble-rosidl-generator-cpp";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/humble/rosidl_generator_cpp/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "98637e8223df9a4e1a797b6f3a2752ac959544ad96bd1799cd2b977505089d0e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake rosidl-runtime-c rosidl-runtime-cpp test-interface-files ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rosidl-cli rosidl-cmake rosidl-generator-c rosidl-parser rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core python3 rosidl-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
