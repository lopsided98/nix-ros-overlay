
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, geometry-msgs, rc-common-msgs, rosidl-default-generators, rosidl-default-runtime, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rc-reason-msgs";
  version = "0.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/rolling/rc_reason_msgs/0.2.1-4.tar.gz";
    name = "0.2.1-4.tar.gz";
    sha256 = "fd6e45d0991cca6f021d90ff127474e6e500081b24ef60cc8f1684ebec14ac1f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rc-common-msgs rosidl-default-runtime shape-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Msg and srv definitions for rc_reason_clients'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
