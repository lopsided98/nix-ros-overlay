
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-std-srvs";
  version = "5.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/std_srvs/5.3.0-2.tar.gz";
    name = "5.3.0-2.tar.gz";
    sha256 = "f99de8e376b0bf5f0f3ab1886164ef3e44a394b1e3ceb603fc8c146c96d04bcd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some standard service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
