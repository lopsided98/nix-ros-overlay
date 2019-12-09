
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-typesupport-interface, ament-cmake-ros, rosidl-generator-c, poco, rosidl-typesupport-opensplice-c, poco-vendor, ament-lint-common, rosidl-typesupport-introspection-c, ament-cmake-core, rosidl-typesupport-connext-c, rmw-implementation, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-c";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/dashing/rosidl_typesupport_c/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "54b012da7b942f710c227516e228a51b05e6be85f733725448ba4abde2fc49f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ poco rosidl-typesupport-opensplice-c poco-vendor rosidl-typesupport-introspection-c rosidl-typesupport-connext-c rosidl-generator-c ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-typesupport-interface poco poco-vendor rmw-implementation ament-cmake-core rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
