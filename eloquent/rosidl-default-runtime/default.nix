
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rosidl-typesupport-c, ament-lint-common, ament-cmake, rosidl-generator-py, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, rosidl-typesupport-cpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-default-runtime";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/eloquent/rosidl_default_runtime/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "7af02d123e82b2d94c8cad1af2539d1fbd656ec310e59075f07f06931bd7caa7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-cpp rosidl-typesupport-c rosidl-generator-py rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A configuration package defining the runtime for the ROS interfaces.'';
    license = with lib.licenses; [ asl20 ];
  };
}
