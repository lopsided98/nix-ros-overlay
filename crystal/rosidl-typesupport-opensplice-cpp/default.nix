
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, opensplice_6_9, ament-cmake, rosidl-typesupport-interface, ament-lint-common, rosidl-generator-c, opensplice-cmake-module, rosidl-cmake, rosidl-parser, ament-lint-auto, rmw, rosidl-generator-dds-idl }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-opensplice-cpp";
  version = "0.6.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/crystal/rosidl_typesupport_opensplice_cpp/0.6.3-1.tar.gz;
    sha256 = "3bd641b06f77153233a8c5eebab313fd4612685cf23bc6afdc31d42ab9473b31";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp opensplice_6_9 ament-cmake rosidl-generator-c rosidl-typesupport-interface opensplice-cmake-module rosidl-cmake rosidl-parser rmw rosidl-generator-dds-idl ];
  nativeBuildInputs = [ rosidl-generator-cpp opensplice_6_9 ament-cmake opensplice-cmake-module rosidl-cmake rosidl-generator-c ];

  meta = {
    description = ''Generate the C++ interfaces for PrismTech OpenSplice.'';
    license = with lib.licenses; [ asl20 ];
  };
}
