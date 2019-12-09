
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-typesupport-opensplice-cpp, rosidl-cmake, rosidl-generator-cpp, rcutils, opensplice_6_9, rosidl-typesupport-opensplice-c, ament-lint-common, ament-cmake, opensplice-cmake-module, rosidl-generator-dds-idl, rmw, rosidl-generator-c, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rmw-opensplice-cpp";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_opensplice-release/archive/release/crystal/rmw_opensplice_cpp/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "6d86a8b9e2e0aab9e2a58fd3eec8c9463dba0a95e21bae0ea5a9aeb9b03737d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-opensplice-cpp rosidl-generator-cpp rcutils opensplice_6_9 rosidl-typesupport-opensplice-c rosidl-generator-dds-idl rmw rosidl-generator-c ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-typesupport-opensplice-cpp rosidl-cmake rosidl-generator-cpp opensplice_6_9 rosidl-typesupport-opensplice-c ament-cmake opensplice-cmake-module rmw rosidl-generator-c ];
  nativeBuildInputs = [ rosidl-cmake opensplice-cmake-module ament-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using PrismTech OpenSplice static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
