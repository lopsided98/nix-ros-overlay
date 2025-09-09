
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, fmt, nlohmann_json, python-cmake-module, rmw, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-c, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-generator-py";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_generator_py/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "49845d579317bdba613fb84b2debe4cfc9615c77d470dcb94174a0cc14dc4588";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-runtime-c ];
  propagatedBuildInputs = [ ament-cmake ament-index-python fmt nlohmann_json python-cmake-module rmw rosidl-generator-c rosidl-pycommon rosidl-typesupport-c rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake ament-index-python python-cmake-module rosidl-generator-c rosidl-pycommon rosidl-typesupport-c rosidl-typesupport-interface ];

  meta = {
    description = "Generate the ROS interfaces in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}
