
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-typesupport-opensplice-cpp, rosidl-cmake, rosidl-generator-cpp, rcutils, opensplice_6_9, rosidl-typesupport-opensplice-c, ament-lint-common, ament-cmake, rcpputils, opensplice-cmake-module, rosidl-generator-dds-idl, rmw, rosidl-generator-c, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rmw-opensplice-cpp";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_opensplice-release/archive/release/eloquent/rmw_opensplice_cpp/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "bafdb2e9e313538d0508ac87722a47981a1b3d7a80e32b8b0d49df6093349ce5";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-opensplice-cpp rosidl-generator-cpp rcutils opensplice_6_9 rosidl-typesupport-opensplice-c rcpputils rosidl-generator-dds-idl rmw rosidl-generator-c ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-typesupport-opensplice-cpp rosidl-cmake rosidl-generator-cpp opensplice_6_9 rosidl-typesupport-opensplice-c ament-cmake opensplice-cmake-module rmw rosidl-generator-c ];
  nativeBuildInputs = [ rosidl-cmake opensplice-cmake-module ament-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using ADLINK OpenSplice static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
