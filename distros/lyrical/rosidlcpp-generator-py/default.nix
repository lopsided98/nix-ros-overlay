
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, fmt, nlohmann_json, python-cmake-module, rmw, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-c, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-lyrical-rosidlcpp-generator-py";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/lyrical/rosidlcpp_generator_py/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "67e9458bcbf275eff44269af05ad0e102995b18ad3275514c4e0784d25ef649e";
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
