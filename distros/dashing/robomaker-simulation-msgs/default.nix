
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-robomaker-simulation-msgs";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_robomaker_simulation_ros_pkgs-release/archive/release/dashing/robomaker_simulation_msgs/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "dbbe15372ddbac35418c92bb20c3749fd5c92e9661dbc8d4b4a8363716e5ee44";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''AWS RoboMaker package containing ROS service definitions for service endpoints provided inside of an AWS RoboMaker simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
