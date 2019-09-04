
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rosidl-typesupport-c, ament-cmake, rosidl-generator-py, ament-lint-common, rosidl-typesupport-introspection-c, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rosidl-default-runtime";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/crystal/rosidl_default_runtime/0.6.0-0.tar.gz;
    sha256 = "8b856ffb15bc3153f89f51d87b1606568d2702cd87f00c30f39f8b65e24142ad";
  };

  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp rosidl-typesupport-c rosidl-generator-py rosidl-typesupport-introspection-c rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A configuration package defining the runtime for the ROS interfaces.'';
    license = with lib.licenses; [ asl20 ];
  };
}
