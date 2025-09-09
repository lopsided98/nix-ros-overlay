
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, fmt, nlohmann_json, rcutils, rosidl-runtime-c, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-kilted-rosidlcpp-generator-type-description";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/kilted/rosidlcpp_generator_type_description/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "63b97627a70bb5cdc77c8a451cf3941d39b330dc35d49e2ee834acbd417256f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-core fmt nlohmann_json rcutils rosidl-runtime-c rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core ];

  meta = {
    description = "Generate hashes and descriptions of ROS 2 interface types, per REP-2011.";
    license = with lib.licenses; [ asl20 ];
  };
}
