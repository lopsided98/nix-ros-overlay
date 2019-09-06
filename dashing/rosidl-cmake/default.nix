
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-adapter, ament-cmake, ament-lint-common, python3Packages, rosidl-parser, ament-cmake-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosidl-cmake";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_cmake/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "9a4769a81b48684a7542f66b7f4eeadb73db99c8d45965b39eb3fb3bb9cb644c";
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
