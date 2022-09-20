
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-generator-py, rosidl-typesupport-c, rosidl-typesupport-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-foxy-rosidl-default-generators";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/foxy/rosidl_default_generators/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "7d4f2be5e2751c8dbe70344468a104f061879cf1d4759d2117d946659431600d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-generator-py rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-generator-py rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];

  meta = {
    description = ''A configuration package defining the default ROS interface generators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
