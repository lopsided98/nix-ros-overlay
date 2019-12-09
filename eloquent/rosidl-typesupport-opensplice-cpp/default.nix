
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, rosidl-generator-cpp, opensplice_6_9, ament-lint-common, ament-cmake, ament-lint-auto, rosidl-generator-dds-idl, opensplice-cmake-module, rmw, rosidl-generator-c, rosidl-parser }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-opensplice-cpp";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/eloquent/rosidl_typesupport_opensplice_cpp/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "4c1bf21dd161d7f640fa4e17df9a1c19aa7e3b40d062a721cf734b0d2a52849f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-typesupport-interface rosidl-generator-cpp opensplice_6_9 ament-cmake rosidl-generator-dds-idl opensplice-cmake-module rmw rosidl-generator-c rosidl-parser ];
  nativeBuildInputs = [ rosidl-cmake rosidl-generator-cpp opensplice_6_9 ament-cmake opensplice-cmake-module rosidl-generator-c ];

  meta = {
    description = ''Generate the C++ interfaces for PrismTech OpenSplice.'';
    license = with lib.licenses; [ asl20 ];
  };
}
