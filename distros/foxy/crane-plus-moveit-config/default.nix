
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit, robot-state-publisher, rviz2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-moveit-config";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/crane_plus-release/archive/release/foxy/crane_plus_moveit_config/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "90ec7de52429a07afb6af56af934b7c65da4316551b1aaedb8cdf9c812c68ecd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit robot-state-publisher rviz2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+V2 move_group config package'';
    license = with lib.licenses; [ asl20 ];
  };
}
