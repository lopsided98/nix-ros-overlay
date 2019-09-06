
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, opensplice_6_9, ament-cmake, ament-lint-common, rosidl-generator-c, opensplice-cmake-module, rosidl-typesupport-opensplice-cpp, rosidl-cmake, rosidl-parser, ament-lint-auto, rmw, rosidl-generator-dds-idl }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-opensplice-c";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/dashing/rosidl_typesupport_opensplice_c/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "c2bee6ebfc09eaf3db7b9ede814201096e3fca3acd44f927e0ad763abe54253e";
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
