
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-parser }:
buildRosPackage {
  pname = "ros-iron-rosidl-generator-type-description";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/iron/rosidl_generator_type_description/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "8efc5e3f9d5526b2b0b8b12293b055e53545827223429fe48e8022010066f92a";
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
