
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-microstrain-inertial-msgs";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-ros2-release/archive/release/galactic/microstrain_inertial_msgs/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "206693798af81eb36087eb6b456b1a71802bd9aa15a94a7f6f6ce1f5a627c386";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry-msgs std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''A package that contains ROS message corresponding to microstrain message types.'';
    license = with lib.licenses; [ mit ];
  };
}
