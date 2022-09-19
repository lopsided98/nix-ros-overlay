
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, geometry-msgs, rc-common-msgs, rosidl-default-generators, rosidl-default-runtime, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rc-reason-msgs";
  version = "0.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/humble/rc_reason_msgs/0.2.1-4.tar.gz";
    name = "0.2.1-4.tar.gz";
    sha256 = "91bd598780ee3942782184cb2c66061591c3e3db00fa9a8da0e46f78c5cf195b";
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
