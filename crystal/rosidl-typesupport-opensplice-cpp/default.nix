
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opensplice-cmake-module, opensplice_6_9, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-generator-dds-idl, rosidl-parser, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-opensplice-cpp";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/crystal/rosidl_typesupport_opensplice_cpp/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "3bd641b06f77153233a8c5eebab313fd4612685cf23bc6afdc31d42ab9473b31";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake opensplice-cmake-module opensplice_6_9 rmw rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-generator-dds-idl rosidl-parser rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake opensplice-cmake-module opensplice_6_9 rosidl-cmake rosidl-generator-c rosidl-generator-cpp ];

  meta = {
    description = ''Generate the C++ interfaces for PrismTech OpenSplice.'';
    license = with lib.licenses; [ asl20 ];
  };
}
