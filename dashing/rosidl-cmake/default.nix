
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-adapter, ament-cmake, ament-lint-common, python3Packages, rosidl-parser, ament-cmake-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosidl-cmake";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_cmake/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "862fe99a13fefa2a157353132bc5ec7f592ee88178085c2a2e8d8df131e63862";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-adapter ament-cmake python3Packages.empy rosidl-parser ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake ];

  meta = {
    description = ''The CMake functionality to invoke code generation for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
