
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python3Packages, rosidl-actions, rosidl-parser }:
buildRosPackage {
  pname = "ros-crystal-rosidl-cmake";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/rosidl_cmake/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "511f4f0f1635d02c087d46fdb566d7a176bf94d1be85488a8764a9c93f706368";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake python3Packages.empy rosidl-actions rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''The CMake functionality to invoke code generation for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
