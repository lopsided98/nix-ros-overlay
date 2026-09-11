
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, generate-parameter-library, generate-parameter-library-py, nodl-schema, python3Packages }:
buildRosPackage {
  pname = "ros-humble-nodl-generator-cpp";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/humble/nodl_generator_cpp/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "b16dd647ba5b3f80711661e6d591d4bb1b57078071f1522c470792001bf78046";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ nodl-schema python3Packages.pytest ];
  propagatedBuildInputs = [ generate-parameter-library generate-parameter-library-py nodl-schema ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = "Generate an rclcpp base-node class from a NoDL document.";
    license = with lib.licenses; [ asl20 ];
  };
}
