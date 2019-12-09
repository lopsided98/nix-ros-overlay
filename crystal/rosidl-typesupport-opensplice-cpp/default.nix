
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, rosidl-generator-cpp, opensplice_6_9, ament-lint-common, ament-cmake, ament-lint-auto, rosidl-generator-dds-idl, opensplice-cmake-module, rmw, rosidl-generator-c, rosidl-parser }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-opensplice-cpp";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/crystal/rosidl_typesupport_opensplice_cpp/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "3bd641b06f77153233a8c5eebab313fd4612685cf23bc6afdc31d42ab9473b31";
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
