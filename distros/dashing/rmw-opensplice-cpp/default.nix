
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opensplice-cmake-module, opensplice_6_9, rcpputils, rcutils, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-generator-dds-idl, rosidl-typesupport-opensplice-c, rosidl-typesupport-opensplice-cpp }:
buildRosPackage {
  pname = "ros-dashing-rmw-opensplice-cpp";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_opensplice-release/archive/release/dashing/rmw_opensplice_cpp/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "bd5fd530206695f560d332404697c240cf448cdc8eb0da7f96b502c862b18a9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcpputils rcutils rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake opensplice-cmake-module opensplice_6_9 rmw rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-typesupport-opensplice-c rosidl-typesupport-opensplice-cpp ];
  nativeBuildInputs = [ ament-cmake opensplice-cmake-module rosidl-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using PrismTech OpenSplice static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
