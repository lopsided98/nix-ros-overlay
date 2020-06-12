
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcpputils, rosidl-runtime-c, rosidl-typesupport-connext-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c }:
buildRosPackage {
  pname = "ros-foxy-rosidl-typesupport-c";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/foxy/rosidl_typesupport_c/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "49a327dfa602107dfc2b4e7cbad2630975333cc2a04cadbd254df8e901e1e8e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-connext-c rosidl-typesupport-introspection-c ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core rcpputils rosidl-runtime-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
