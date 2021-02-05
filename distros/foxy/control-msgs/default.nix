
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-foxy-control-msgs";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/control_msgs-release/archive/release/foxy/control_msgs/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "ab7f17a39e21c928f7e22268de920281d2115c5b64e50e88cea92dd2390acac8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''control_msgs contains base messages and actions useful for
    controlling robots.  It provides representations for controller
    setpoints and joint and cartesian trajectories.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
