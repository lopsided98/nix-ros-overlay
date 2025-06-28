
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python3Packages, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-kilted-rosidl-cmake";
  version = "4.9.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_cmake/4.9.4-2.tar.gz";
    name = "4.9.4-2.tar.gz";
    sha256 = "fffe2ddd09f7729f91059f079439c635d96a86c9e95d4dd02854afad919c959f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake python3Packages.empy rosidl-pycommon ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python3Packages.empy ];

  meta = {
    description = "The CMake functionality to invoke code generation for ROS interface files.";
    license = with lib.licenses; [ asl20 ];
  };
}
