
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python3Packages, rosidl-adapter, rosidl-parser }:
buildRosPackage {
  pname = "ros-humble-rosidl-cmake";
  version = "3.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/humble/rosidl_cmake/3.1.8-1.tar.gz";
    name = "3.1.8-1.tar.gz";
    sha256 = "b6b1408059bf52bd183762d7b0797d30e28a146975081eed239a5e7ca506bd0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake python3Packages.empy rosidl-adapter rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python3Packages.empy ];

  meta = {
    description = "The CMake functionality to invoke code generation for ROS interface files.";
    license = with lib.licenses; [ asl20 ];
  };
}
