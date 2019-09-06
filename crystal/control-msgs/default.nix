
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, trajectory-msgs, rosidl-default-generators, std-msgs, action-msgs, ament-lint-auto, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-control-msgs";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/control_msgs-release/archive/release/crystal/control_msgs/2.1.0-0.tar.gz;
    sha256 = "1d934b64b7a9fbb74be9ce80d1b4f1791c8c40e1128abf787845853e10bd4842";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces trajectory-msgs action-msgs std-msgs geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces trajectory-msgs action-msgs std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''control_msgs contains base messages and actions useful for
    controlling robots.  It provides representations for controller
    setpoints and joint and cartesian trajectories.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
