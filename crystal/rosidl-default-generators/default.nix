
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rosidl-typesupport-c, ament-cmake, rosidl-generator-py, ament-lint-common, ament-cmake-core, rosidl-typesupport-introspection-c, rosidl-typesupport-cpp, rosidl-cmake, rosidl-typesupport-introspection-cpp, ament-lint-auto, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rosidl-default-generators";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/crystal/rosidl_default_generators/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "0d994dd35ba40f84ae30f6ef0d14a5d00acfd24ca660e55b05a3882e811802a3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp rosidl-typesupport-c rosidl-generator-py ament-cmake-core rosidl-typesupport-introspection-c rosidl-typesupport-cpp rosidl-cmake rosidl-typesupport-introspection-cpp rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A configuration package defining the default ROS interface generators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
