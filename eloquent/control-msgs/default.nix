
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-eloquent-control-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/control_msgs-release/archive/release/eloquent/control_msgs/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "14c831247ce449aa200d0b3a6d88e4c27a04264a34748cfa4b824e3626d7071d";
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
