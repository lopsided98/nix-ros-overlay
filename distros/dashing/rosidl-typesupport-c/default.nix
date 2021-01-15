
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-lint-auto, ament-lint-common, poco, poco-vendor, rmw-implementation, rosidl-generator-c, rosidl-typesupport-connext-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c, rosidl-typesupport-opensplice-c }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-c";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/dashing/rosidl_typesupport_c/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "54b012da7b942f710c227516e228a51b05e6be85f733725448ba4abde2fc49f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-connext-c rosidl-typesupport-introspection-c rosidl-typesupport-opensplice-c ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core poco poco-vendor rmw-implementation rosidl-generator-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
