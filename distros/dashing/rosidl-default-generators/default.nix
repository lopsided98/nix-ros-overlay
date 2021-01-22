
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-generator-py, rosidl-typesupport-c, rosidl-typesupport-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-dashing-rosidl-default-generators";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/dashing/rosidl_default_generators/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "9acdeb7b93b7a6cb8bb91678567276a0be6b75a723e79befbf76419b6a44a831";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-generator-py rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A configuration package defining the default ROS interface generators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
