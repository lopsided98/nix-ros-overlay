
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-python, rosidl-parser, rosidl-adapter }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-cmake";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/eloquent/rosidl_cmake/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "caace357518239897cf1ed2ad2b0157faf0952f87e1147a9622c734b06631c12";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-parser python3Packages.empy ament-cmake rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake ];

  meta = {
    description = ''The CMake functionality to invoke code generation for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
