
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-microstrain-inertial-msgs";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/galactic/microstrain_inertial_msgs/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "4a49c04e5bbf999fffdb241f2664ef29f6a1482d319824f10bd02fe142d2c316";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry-msgs std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''A package that contains ROS message corresponding to microstrain message types.'';
    license = with lib.licenses; [ mit ];
  };
}
