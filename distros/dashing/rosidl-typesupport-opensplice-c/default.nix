
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opensplice-cmake-module, opensplice_6_9, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-dds-idl, rosidl-parser, rosidl-typesupport-opensplice-cpp }:
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
  propagatedBuildInputs = [ ament-cmake opensplice-cmake-module opensplice_6_9 rmw rosidl-cmake rosidl-generator-c rosidl-generator-dds-idl rosidl-parser rosidl-typesupport-opensplice-cpp ];
  nativeBuildInputs = [ ament-cmake opensplice-cmake-module opensplice_6_9 rosidl-cmake rosidl-generator-c rosidl-typesupport-opensplice-cpp ];

  meta = {
    description = ''Generate the C interfaces for PrismTech OpenSplice.'';
    license = with lib.licenses; [ asl20 ];
  };
}
