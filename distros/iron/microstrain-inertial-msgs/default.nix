
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-iron-microstrain-inertial-msgs";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/iron/microstrain_inertial_msgs/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "dbe0f29e67592f7dbdc739bbf26fa5a2aefd5bc007e11800f3a1664461a1544b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''A package that contains ROS message corresponding to microstrain message types.'';
    license = with lib.licenses; [ mit ];
  };
}
