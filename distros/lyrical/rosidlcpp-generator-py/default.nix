
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, fmt, nlohmann_json, rmw, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-c, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-lyrical-rosidlcpp-generator-py";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/lyrical/rosidlcpp_generator_py/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "52747ef8545609b50bfdaf3232f7debc0a0c9187df43a2bc4e12fa423b07551b";
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
