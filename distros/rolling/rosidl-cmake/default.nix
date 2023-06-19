
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python3Packages, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-rolling-rosidl-cmake";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_cmake/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "fa6e138bf9af33f06ef25c1cd8f44246e87b6f07377d95121a41580c2e4784ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake python3Packages.empy rosidl-pycommon ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python3Packages.empy ];

  meta = {
    description = ''The CMake functionality to invoke code generation for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
