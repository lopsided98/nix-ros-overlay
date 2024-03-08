
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, geometry-msgs, rc-common-msgs, rosidl-default-generators, rosidl-default-runtime, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rc-reason-msgs";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/rolling/rc_reason_msgs/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "a88689cf7de6eebe1f509fa2e4ce473eec2ca509e3a6c4f164b6fbe9efb85914";
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
