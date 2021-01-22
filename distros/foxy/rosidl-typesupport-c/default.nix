
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, rcpputils, rcutils, rosidl-runtime-c, rosidl-typesupport-connext-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c }:
buildRosPackage {
  pname = "ros-foxy-rosidl-typesupport-c";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/foxy/rosidl_typesupport_c/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "ff13cb2599dc285927870f823c20076e37e0e272c1f8610ddd4f344b960f43f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-connext-c rosidl-typesupport-introspection-c ];
  checkInputs = [ ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-core rcpputils rcutils rosidl-runtime-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
