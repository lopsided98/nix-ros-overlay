
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python3Packages, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-kilted-rosidl-cmake";
  version = "4.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_cmake/4.9.7-1.tar.gz";
    name = "4.9.7-1.tar.gz";
    sha256 = "16df98f6baa388ca5e55da2971f05f9b33c8bfa6052e51955b584c41176d4d3d";
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
