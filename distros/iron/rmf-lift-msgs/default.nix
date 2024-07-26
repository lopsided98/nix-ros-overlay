
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-rmf-lift-msgs";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/iron/rmf_lift_msgs/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "304ffc3a53983127c82729a350b6952a12ce26cf72dc0e9ff1f163be14173fa1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages used to interface to lifts.";
    license = with lib.licenses; [ asl20 ];
  };
}
