
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opensplice-cmake-module, opensplice_6_9, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-dds-idl, rosidl-parser, rosidl-typesupport-opensplice-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-opensplice-c";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/eloquent/rosidl_typesupport_opensplice_c/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "1549598d1964450b5e8ebce1e63c5428025bbff68551396a626d31d239ad8655";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake opensplice-cmake-module opensplice_6_9 rmw rosidl-cmake rosidl-generator-c rosidl-generator-dds-idl rosidl-parser rosidl-typesupport-opensplice-cpp ];
  nativeBuildInputs = [ ament-cmake opensplice-cmake-module opensplice_6_9 rosidl-cmake rosidl-generator-c rosidl-typesupport-opensplice-cpp ];

  meta = {
    description = ''Generate the C interfaces for PrismTech OpenSplice.'';
    license = with lib.licenses; [ asl20 ];
  };
}
