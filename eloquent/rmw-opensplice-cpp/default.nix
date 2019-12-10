
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opensplice-cmake-module, opensplice_6_9, rcpputils, rcutils, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-generator-dds-idl, rosidl-typesupport-opensplice-c, rosidl-typesupport-opensplice-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rmw-opensplice-cpp";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_opensplice-release/archive/release/eloquent/rmw_opensplice_cpp/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "bafdb2e9e313538d0508ac87722a47981a1b3d7a80e32b8b0d49df6093349ce5";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcpputils rcutils rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake opensplice-cmake-module opensplice_6_9 rmw rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-typesupport-opensplice-c rosidl-typesupport-opensplice-cpp ];
  nativeBuildInputs = [ ament-cmake opensplice-cmake-module rosidl-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using ADLINK OpenSplice static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
