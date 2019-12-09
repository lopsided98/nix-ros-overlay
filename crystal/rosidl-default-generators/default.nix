
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-generator-cpp, rosidl-typesupport-c, ament-lint-common, ament-cmake, rosidl-generator-py, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, rosidl-typesupport-cpp, ament-cmake-core, rosidl-generator-c, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rosidl-default-generators";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/crystal/rosidl_default_generators/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "0d994dd35ba40f84ae30f6ef0d14a5d00acfd24ca660e55b05a3882e811802a3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-generator-cpp rosidl-typesupport-c rosidl-generator-py rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp rosidl-typesupport-cpp ament-cmake-core rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A configuration package defining the default ROS interface generators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
