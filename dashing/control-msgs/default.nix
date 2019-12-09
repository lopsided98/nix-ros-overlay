
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, geometry-msgs, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, action-msgs, rosidl-default-generators, builtin-interfaces, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-control-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/control_msgs-release/archive/release/dashing/control_msgs/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "1256974d84928926f3077e5231dd0b66eb8cabdc33e1ec98b36782849eb77063";
  };

  buildType = "ament_cmake";
  buildInputs = [ trajectory-msgs geometry-msgs std-msgs builtin-interfaces action-msgs ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ trajectory-msgs geometry-msgs rosidl-default-runtime std-msgs builtin-interfaces action-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''control_msgs contains base messages and actions useful for
    controlling robots.  It provides representations for controller
    setpoints and joint and cartesian trajectories.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
