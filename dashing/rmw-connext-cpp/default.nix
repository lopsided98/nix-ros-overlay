
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rmw-connext-shared-cpp, rosidl-generator-c, ament-cmake, ament-lint-common, connext-cmake-module, rosidl-typesupport-connext-c, rosidl-cmake, ament-lint-auto, rosidl-typesupport-connext-cpp, rcutils, rmw, rosidl-generator-dds-idl }:
buildRosPackage {
  pname = "ros-dashing-rmw-connext-cpp";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connext-release/archive/release/dashing/rmw_connext_cpp/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "ae092ccf840be05132e3eff8979faa4d2e1c93820c36e798e87dd327e2088d9e";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rmw-connext-shared-cpp rosidl-generator-c connext-cmake-module rosidl-typesupport-connext-c rosidl-typesupport-connext-cpp rcutils rmw rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp rmw-connext-shared-cpp ament-cmake connext-cmake-module rosidl-typesupport-connext-c rosidl-cmake rosidl-typesupport-connext-cpp rcutils rmw rosidl-generator-c ];
  nativeBuildInputs = [ rosidl-cmake ament-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using RTI Connext static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
