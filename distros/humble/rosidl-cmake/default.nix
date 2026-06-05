
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python3Packages, rosidl-adapter, rosidl-parser }:
buildRosPackage {
  pname = "ros-humble-rosidl-cmake";
  version = "3.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/humble/rosidl_cmake/3.1.9-1.tar.gz";
    name = "3.1.9-1.tar.gz";
    sha256 = "4298c11d1b68e924d668eaf30a26a4232fcb7f1a3f8500b9d1eefa84e982ed88";
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
