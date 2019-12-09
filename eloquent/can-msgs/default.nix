
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-can-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/eloquent/can_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "9ea1231f801d14b9235e1dc6fa8b7825f4d1044878f3f67fb33119125a220901";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''CAN related message types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
