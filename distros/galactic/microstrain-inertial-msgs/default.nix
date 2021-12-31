
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-microstrain-inertial-msgs";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-ros2-release/archive/release/galactic/microstrain_inertial_msgs/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "30a60df04baf0849c3ea67a07f59986b17394d302269487faf0aa7800ff869fc";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry-msgs std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''A package that contains ROS message corresponding to microstrain message types.'';
    license = with lib.licenses; [ mit ];
  };
}
