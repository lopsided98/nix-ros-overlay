
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, opensplice_6_9, ament-cmake, ament-lint-common, rosidl-generator-c, opensplice-cmake-module, rosidl-typesupport-opensplice-cpp, rosidl-cmake, rosidl-parser, ament-lint-auto, rmw, rosidl-generator-dds-idl }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-opensplice-c";
  version = "0.6.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/crystal/rosidl_typesupport_opensplice_c/0.6.3-1.tar.gz;
    sha256 = "3eb10890c529a50bc9c098b82bfc8230ca1c4beb285378be7e36631e4a4aa431";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ opensplice_6_9 ament-cmake rosidl-generator-c opensplice-cmake-module rosidl-typesupport-opensplice-cpp rosidl-cmake rosidl-parser rmw rosidl-generator-dds-idl ];
  nativeBuildInputs = [ opensplice_6_9 ament-cmake opensplice-cmake-module rosidl-typesupport-opensplice-cpp rosidl-cmake rosidl-generator-c ];

  meta = {
    description = ''Generate the C interfaces for PrismTech OpenSplice.'';
    license = with lib.licenses; [ asl20 ];
  };
}
