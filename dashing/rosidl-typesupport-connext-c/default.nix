
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-c, ament-cmake, ament-lint-common, connext-cmake-module, rosidl-cmake, rosidl-parser, ament-lint-auto, rosidl-typesupport-connext-cpp, rcutils, rmw, rosidl-generator-dds-idl }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-connext-c";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/dashing/rosidl_typesupport_connext_c/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "3d59c4dbe2b1429ea373753ebc4906a044946e55ebb67b9c3318c4b97541c210";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-c ament-cmake connext-cmake-module rosidl-cmake rosidl-parser rosidl-typesupport-connext-cpp rcutils rmw rosidl-generator-dds-idl ];
  nativeBuildInputs = [ ament-cmake connext-cmake-module rosidl-cmake rosidl-typesupport-connext-cpp rosidl-generator-c ];

  meta = {
    description = ''Generate the C interfaces for RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
