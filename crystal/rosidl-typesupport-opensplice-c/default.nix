
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-typesupport-opensplice-cpp, rosidl-cmake, opensplice_6_9, ament-lint-common, ament-cmake, ament-lint-auto, rosidl-generator-dds-idl, opensplice-cmake-module, rmw, rosidl-generator-c, rosidl-parser }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-opensplice-c";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/crystal/rosidl_typesupport_opensplice_c/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "3eb10890c529a50bc9c098b82bfc8230ca1c4beb285378be7e36631e4a4aa431";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-typesupport-opensplice-cpp rosidl-cmake opensplice_6_9 ament-cmake rosidl-generator-dds-idl opensplice-cmake-module rmw rosidl-generator-c rosidl-parser ];
  nativeBuildInputs = [ rosidl-cmake rosidl-typesupport-opensplice-cpp opensplice_6_9 ament-cmake opensplice-cmake-module rosidl-generator-c ];

  meta = {
    description = ''Generate the C interfaces for PrismTech OpenSplice.'';
    license = with lib.licenses; [ asl20 ];
  };
}
