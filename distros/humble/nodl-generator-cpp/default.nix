
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, generate-parameter-library, generate-parameter-library-py, nodl-schema, python3Packages }:
buildRosPackage {
  pname = "ros-humble-nodl-generator-cpp";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/humble/nodl_generator_cpp/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "cdc83cf8cd886ced62b9ed651c2c2109fc2658d585400f07c157aad30b312eb7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ nodl-schema python3Packages.pytest ];
  propagatedBuildInputs = [ generate-parameter-library generate-parameter-library-py nodl-schema ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Generate an rclcpp base-node class from a NoDL document.";
    license = with lib.licenses; [ asl20 ];
  };
}
