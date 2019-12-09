
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-typesupport-opensplice-cpp, rosidl-cmake, rosidl-generator-cpp, rcutils, opensplice_6_9, rosidl-typesupport-opensplice-c, ament-lint-common, ament-cmake, rcpputils, opensplice-cmake-module, rosidl-generator-dds-idl, rmw, rosidl-generator-c, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rmw-opensplice-cpp";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_opensplice-release/archive/release/dashing/rmw_opensplice_cpp/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "bd5fd530206695f560d332404697c240cf448cdc8eb0da7f96b502c862b18a9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-opensplice-cpp rosidl-generator-cpp rcutils opensplice_6_9 rosidl-typesupport-opensplice-c rcpputils rosidl-generator-dds-idl rmw rosidl-generator-c ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-typesupport-opensplice-cpp rosidl-cmake rosidl-generator-cpp opensplice_6_9 rosidl-typesupport-opensplice-c ament-cmake opensplice-cmake-module rmw rosidl-generator-c ];
  nativeBuildInputs = [ rosidl-cmake opensplice-cmake-module ament-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using PrismTech OpenSplice static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
