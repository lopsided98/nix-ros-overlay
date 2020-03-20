
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python3Packages, rosidl-adapter, rosidl-parser }:
buildRosPackage {
  pname = "ros-dashing-rosidl-cmake";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_cmake/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "4487d4f50642cd260d17b0c84807ca1fe9ce48f756e2277e833786983332e806";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake python3Packages.empy rosidl-adapter rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''The CMake functionality to invoke code generation for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
