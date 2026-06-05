
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python3Packages, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-cmake";
  version = "4.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_cmake/4.6.8-1.tar.gz";
    name = "4.6.8-1.tar.gz";
    sha256 = "76c7e5f17f5b42787393e642a61b71791c04cf30f8440ee247b753a1556d75a2";
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
