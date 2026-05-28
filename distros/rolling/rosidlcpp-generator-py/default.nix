
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, fmt, nlohmann_json, rmw, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-c, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-generator-py";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_generator_py/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "5e1044eec76490f35658c3d44be190e28cef5165f5af15c9d0e26e7ec57ac3ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-runtime-c ];
  propagatedBuildInputs = [ ament-cmake ament-index-python fmt nlohmann_json rmw rosidl-generator-c rosidl-pycommon rosidl-typesupport-c rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake ament-index-python rosidl-generator-c rosidl-pycommon rosidl-typesupport-c rosidl-typesupport-interface ];

  meta = {
    description = "Generate the ROS interfaces in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}
