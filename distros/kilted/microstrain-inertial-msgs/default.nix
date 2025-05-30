
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-microstrain-inertial-msgs";
  version = "4.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/kilted/microstrain_inertial_msgs/4.6.0-2.tar.gz";
    name = "4.6.0-2.tar.gz";
    sha256 = "cacd0ab79b6a1cb8481e6161cb7bff9603ed85eb3db1f651d6192b86686c192f";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "A package that contains ROS message corresponding to microstrain message types.";
    license = with lib.licenses; [ mit ];
  };
}
