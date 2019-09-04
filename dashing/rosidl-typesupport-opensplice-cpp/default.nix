
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, opensplice_6_9, ament-cmake, rosidl-typesupport-interface, ament-lint-common, rosidl-generator-c, opensplice-cmake-module, rosidl-cmake, rosidl-parser, ament-lint-auto, rmw, rosidl-generator-dds-idl }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-opensplice-cpp";
  version = "0.7.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/dashing/rosidl_typesupport_opensplice_cpp/0.7.3-1.tar.gz;
    sha256 = "f6ee4baede0b99327da930d6631962e44e450f1a195aaf60c634ca38c15e14cb";
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
