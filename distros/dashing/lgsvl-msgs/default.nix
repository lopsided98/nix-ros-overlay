
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-lgsvl-msgs";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/lgsvl_msgs-release/archive/release/dashing/lgsvl_msgs/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "9db29920ced9ee14bd86be0d3a80db012aecd6558c112f04173905f250c24326";
  };

  buildType = "catkin";
  buildInputs = [ ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];

  meta = {
    description = ''The lgsvl_msgs package for ground truth data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
