
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, poco, rosidl-typesupport-c, rosidl-typesupport-interface, ament-lint-common, poco-vendor, rosidl-typesupport-opensplice-cpp, rmw-implementation, rosidl-typesupport-introspection-cpp, ament-cmake-ros, ament-lint-auto, rosidl-typesupport-connext-cpp, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-cpp";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/crystal/rosidl_typesupport_cpp/0.6.3-0.tar.gz;
    sha256 = "9dc80a33f451a8d8fa776974c0c696130fdd27a23e9a76925c59779d0df4d734";
  };

  buildInputs = [ poco poco-vendor rosidl-typesupport-opensplice-cpp rosidl-typesupport-introspection-cpp rosidl-typesupport-connext-cpp rosidl-generator-c ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ poco rosidl-typesupport-c rosidl-typesupport-interface poco-vendor rmw-implementation rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C++ messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
