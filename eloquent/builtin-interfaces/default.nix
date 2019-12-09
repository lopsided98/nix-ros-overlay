
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, rosidl-default-generators, ament-lint-common, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-builtin-interfaces";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/eloquent/builtin_interfaces/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "397dd47fde4f6bab25e221858a45058d86a7c84bfcb0e0cec157a223ed87a9da";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing message and service definitions for types defined in the OMG IDL Platform Specific Model.'';
    license = with lib.licenses; [ asl20 ];
  };
}
