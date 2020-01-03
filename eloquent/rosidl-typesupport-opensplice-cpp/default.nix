
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opensplice-cmake-module, opensplice_6_9, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-generator-dds-idl, rosidl-parser, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-opensplice-cpp";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/eloquent/rosidl_typesupport_opensplice_cpp/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "4c1bf21dd161d7f640fa4e17df9a1c19aa7e3b40d062a721cf734b0d2a52849f";
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
