
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-parser }:
buildRosPackage {
  pname = "ros-iron-rosidl-generator-type-description";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/iron/rosidl_generator_type_description/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "db294b050644a834774990af791e191402b9e95a5e107c5a30c7acaaa1025798";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rosidl-cli rosidl-parser ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ament-cmake-ros python3 ];

  meta = {
    description = ''Generate hashes and descriptions of ROS 2 interface types, per REP-2011.'';
    license = with lib.licenses; [ asl20 ];
  };
}
